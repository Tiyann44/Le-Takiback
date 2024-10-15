package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.ChoiceDAO;
import com.takima.backskeleton.DTO.ChoiceDTO;
import com.takima.backskeleton.DTO.ChoiceMapper;
import com.takima.backskeleton.models.Choice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ChoiceService {

    @Autowired
    private ChoiceDAO choiceDAO;

    public ChoiceDTO createChoice(ChoiceDTO choiceDTO) {
        Choice choice = ChoiceMapper.fromDto(choiceDTO);
        Choice savedChoice = choiceDAO.save(choice);
        return ChoiceMapper.toDto(savedChoice);
    }

    public Optional<ChoiceDTO> getChoiceById(Long choiceId) {
        Optional<Choice> choice = choiceDAO.findById(choiceId);
        return choice.map(ChoiceMapper::toDto);
    }

    public List<ChoiceDTO> getAllChoices() {
        List<Choice> choices = choiceDAO.findAll();
        return choices.stream()
                .map(ChoiceMapper::toDto)
                .collect(Collectors.toList());
    }

    public boolean updateChoice(Long choiceId, ChoiceDTO choiceDTO) {
        if (!choiceDAO.existsById(choiceId)) {
            return false;
        }
        Choice choice = ChoiceMapper.fromDto(choiceDTO);
        choice.setId(choiceId);
        choiceDAO.save(choice);
        return true;
    }

    public void deleteChoiceById(Long choiceId) {
        choiceDAO.deleteById(choiceId);
    }
}
