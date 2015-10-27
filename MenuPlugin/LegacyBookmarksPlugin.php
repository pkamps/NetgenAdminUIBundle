<?php

namespace Netgen\Bundle\MoreAdminUIBundle\MenuPlugin;

use Symfony\Component\HttpFoundation\Request;

class LegacyBookmarksPlugin implements MenuPluginInterface
{
    /**
     * Returns plugin identifier
     *
     * @return string
     */
    public function getIdentifier()
    {
        return 'legacy_bookmarks';
    }

    /**
     * Returns the list of templates this plugin supports
     *
     * @return array
     */
    public function getTemplates()
    {
        return array(
            'aside' => 'NetgenMoreAdminUIBundle:menu/plugins/legacy_bookmarks:aside.html.twig'
        );
    }

    /**
     * Returns if this plugin matches the current request
     *
     * @param \Symfony\Component\HttpFoundation\Request $request
     *
     * @return bool
     */
    public function matches( Request $request )
    {
        return false;
    }
}