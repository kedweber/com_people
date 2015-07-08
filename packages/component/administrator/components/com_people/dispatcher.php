<?php

class ComPeopleDispatcher extends ComDefaultDispatcher
{
    protected function _initialize(KConfig $config)
    {
        $config->append(array(
            'controller' => 'person'
        ));

        parent::_initialize($config);
    }
}
