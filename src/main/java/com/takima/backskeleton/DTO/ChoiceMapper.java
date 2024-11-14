package com.takima.backskeleton.DTO;

import com.takima.backskeleton.models.Choice;

public class ChoiceMapper {

    public static Choice fromDto (ChoiceDTO choiceDTO){
       Choice choice = new Choice();
       choice.setId(choiceDTO.getId());
       choice.setOption(choiceDTO.getOption());
       return choice;
    }

    public static ChoiceDTO toDto (Choice choice){
        return new ChoiceDTO(
                choice.getId(),
                choice.getOption()
        );
    }
}
