package com.techreturners.teama.healthyfood.api.controller;

import com.techreturners.teama.healthyfood.api.model.Role;
import com.techreturners.teama.healthyfood.api.model.User;
import com.techreturners.teama.healthyfood.api.service.UserServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import static org.hamcrest.Matchers.hasSize;
import static org.mockito.Mockito.*;

@AutoConfigureMockMvc
@SpringBootTest
public class UserControllerTests {

    private List<Role> userRoles = new ArrayList<>();
    private MockMvc mockMvcController;
    private ObjectMapper mapper;

    @Mock
    private UserServiceImpl mockUserServiceImpl;

    @InjectMocks
    private UserController userController;

    @BeforeEach
    public void setup() {
        mockMvcController = MockMvcBuilders.standaloneSetup(userController).build();
        mapper = new ObjectMapper();
    }

    @Test
    public void checkGetAllUsers() throws Exception {

        List<User> users = new ArrayList<>();
        users.add(new User(1L, "email@gmail.com", null, "firstName", "LastName", "1", "1", LocalDateTime.now(), userRoles));
        users.add(new User(2L, "email2@gmail.com", null, "firstName2", "LastName2", "2", "2", LocalDateTime.now(), userRoles));

        when(mockUserServiceImpl.getAllUsers()).thenReturn(users);

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.get("/api/v1/user/"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.jsonPath("$[1].id").value(2))
                .andExpect(MockMvcResultMatchers.jsonPath("$[1].firstname").value("firstName2"))
                .andExpect(MockMvcResultMatchers.jsonPath("$.*", hasSize(2)));
        ;
    }

    @Test
    public void checkGetUserById() throws Exception {

        User user = new User(1L, "email@gmail.com", null, "firstName", "LastName", "1", "1", LocalDateTime.now(), userRoles);

        when(mockUserServiceImpl.getUserById(user.getId())).thenReturn(user);

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.get("/api/v1/user/" + user.getId()))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.jsonPath("$.id").value(user.getId()))
                .andExpect(MockMvcResultMatchers.jsonPath("$.firstname").value(user.getFirstname()));

        verify(mockUserServiceImpl, times(1)).getUserById(user.getId());
    }

    @Test
    public void checkGetUserByIdWhenUserDoesNotExistForThatID() throws Exception {
        Long userId = 4L;

        doThrow(NoSuchElementException.class)
                .when(mockUserServiceImpl)
                .getUserById(userId);

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.get("/api/v1/user/" + userId))
                .andExpect(MockMvcResultMatchers.status().isNotFound());

        verify(mockUserServiceImpl, times(1)).getUserById(userId);
    }

    @Test
    public void checkAddUser() throws Exception {

        User user = new User(1L, "email@gmail.com", null, "firstName", "LastName", "1", "1", LocalDateTime.now(), userRoles);

        when(mockUserServiceImpl.insertIntoUser(user)).thenReturn(user);

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.post("/api/v1/user/")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(mapper.writeValueAsString(user)))
                .andExpect(MockMvcResultMatchers.status().isCreated());

        verify(mockUserServiceImpl, times(1)).insertIntoUser(user);
    }

    @Test
    public void checkAddUserWhenIdAlreadyExists() throws Exception {

        User user = new User(1L, "email@gmail.com", null, "firstName", "LastName", "1", "1", LocalDateTime.now(), userRoles);

        doThrow(IllegalArgumentException.class)
                .when(mockUserServiceImpl)
                .insertIntoUser(user);

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.post("/api/v1/user/")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(mapper.writeValueAsString(user)))
                .andExpect(MockMvcResultMatchers.status().isConflict());

        verify(mockUserServiceImpl, times(1)).insertIntoUser(user);
    }

    @Test
    public void checkUpdateUserById() throws Exception {

        User user = new User(1L, "email@gmail.com", null, "firstNameUpdated", "LastNameUpdated", "1", "1", LocalDateTime.now(), userRoles);

        when(mockUserServiceImpl.getUserById(user.getId())).thenReturn(user);

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.put("/api/v1/user/" + user.getId())
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(mapper.writeValueAsString(user)))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.jsonPath("$.firstname").value(user.getFirstname()));

        verify(mockUserServiceImpl, times(1)).updateUserById(user.getId(), user);
        verify(mockUserServiceImpl, times(1)).getUserById(user.getId());
    }

    @Test
    public void checkDeleteUserById() throws Exception {
        Long userId = 4L;

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.delete("/api/v1/user/" + userId))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.content().string(userId + ""));

        verify(mockUserServiceImpl, times(1)).deleteUserById(userId);
    }

    @Test
    public void checkDeleteUserByIdWhenUserDoesNotExist() throws Exception {
        Long userId = 4L;

        doThrow(EmptyResultDataAccessException.class)
                .when(mockUserServiceImpl)
                .deleteUserById(userId);

        this.mockMvcController.perform(
                        MockMvcRequestBuilders.delete("/api/v1/user/" + userId))
                .andExpect(MockMvcResultMatchers.status().isNotFound());

        verify(mockUserServiceImpl, times(1)).deleteUserById(userId);
    }
}
