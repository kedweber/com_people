<?php

class ComPeopleModelPeople extends ComTaxonomyModelDefault
{
    /**
     * @param KConfig $config
     */
    public function __construct(KConfig $config)
    {
        parent::__construct($config);

        $this->_state
            ->insert('cck_fieldset_id'  , 'int')
            ->insert('type'		        , 'string')
            ->insert('enabled'		    , 'int')
        ;
    }

    /**
     * @param KDatabaseQuery $query
     */
    protected function _buildQueryWhere(KDatabaseQuery $query)
    {
        $state = $this->_state;

        parent::_buildQueryWhere($query);

        if (is_numeric($state->cck_fieldset_id)) {
            $query->where('tbl.cck_fieldset_id', '=', $state->cck_fieldset_id);
        }

        if ($state->type) {
            $query->where('tbl.type', '=', $state->type);
        }

        if (is_numeric($state->enabled)) {
            $query->where('tbl.enabled', '=', $state->enabled);
        }
    }
}
