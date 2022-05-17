package ateam.techreturners.healthyfood.controller;

import ateam.techreturners.healthyfood.model.User;
import ateam.techreturners.healthyfood.service.UserServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.time.LocalDateTime;

import static org.mockito.Mockito.*;

@AutoConfigureMockMvc
@SpringBootTest
public class UserControllerTests {

    @Mock
    private UserServiceImpl mockUserServiceImpl;

    @InjectMocks
    private UserController userController;

    @Autowired
    private MockMvc mockMvcController;
    private ObjectMapper mapper;

    @BeforeEach
    public void setup(){
        mockMvcController = MockMvcBuilders.standaloneSetup(userController).build();
        mapper = new ObjectMapper();
    }

    @Test
    public void testAddUser() throws Exception {

        User user = new User(1L, "email@gmail.com", "firstName", "LastName", "1", "1", LocalDateTime.now());

        when(mockUserServiceImpl.insertIntoUser(user)).thenReturn(user);

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.post("/api/v1/user/")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(mapper.writeValueAsString(user)))
                .andExpect(MockMvcResultMatchers.status().isCreated());

        verify(mockUserServiceImpl, times(1)).insertIntoUser(user);
    }
}
