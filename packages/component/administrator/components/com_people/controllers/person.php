<?php

class ComPeopleControllerPerson extends ComDefaultControllerDefault
{
    protected function _initialize(KConfig $config)
    {
        $config->append(array(
            'model' => 'com://admin/people.model.people',
        ));

        parent::_initialize($config);
    }
}
