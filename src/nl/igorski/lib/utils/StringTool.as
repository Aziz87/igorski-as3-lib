﻿package nl.igorski.lib.utils
{
    import flash.xml.XMLDocument;
    import flash.xml.XMLNode;
    import flash.xml.XMLNodeType;

    /**
     * ...
     * @author Igor Zinken
     */
    public final class StringTool
    {

        public function StringTool()
        {
            throw new Error( "cannot instantiate StringTool" );
        }

        /*
         * if a string exceeds the given length, truncate it to the
         * length and append some dots...
         */
        public static function truncate( string:String, length:int ):String
        {
            if ( string.length > length )
                return string.substr( 0, length ) + '...';

            return string;
        }

        /*
         * these functions work similarly to their PHP counterparts
         * for encoding and decoding UTF8 character into HTML escaped codes
         */
        public static function htmlentities( str:String = '' ):String
        {
            return XML( new XMLNode( XMLNodeType.TEXT_NODE, str ) ).toXMLString();
        }

        public static function html_entity_decode( str:String = '' ):String
        {
            str = new XMLDocument( str ).firstChild.nodeValue;

            var replaces:Array = [
                                    [ "&ldquo;", "'" ],
                                    [ "&rdquo;", "'" ],
                                    [ "\n", "" ],
                                    [ "\r", "" ]
                                 ];

            for each ( var replace:Array in replaces )
                str = str.replace( replace[0], replace[1] );

            return str;
        }
    }
}