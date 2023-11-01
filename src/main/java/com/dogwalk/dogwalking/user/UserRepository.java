package com.dogwalk.dogwalking.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    // nickname 중복체크
    User findByNickName(String nickName);


}
