package com.example.testSite.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.testSite.Entity.TableBot;


public interface ChatRepository extends JpaRepository<TableBot, Long> {


}
