package nl.igorski.lib.audio.core.events
{
    /**
     * Created by IntelliJ IDEA.
     * User: igorzinken
     * Date: 12-04-11
     * Time: 19:00
     * To change this template use File | Settings | File Templates.
     */
    import flash.events.Event;

    public class AudioCacheEvent extends Event
    {
        public static const CACHE_STARTED   :String = "AudioCacheEvent::CACHE_STARTED";
        public static const CACHE_COMPLETED :String = "AudioCacheEvent::CACHE_COMPLETED";
        public static const CACHE_DESTROYED :String = "AudioCacheEvent::CACHE_DESTROYED";

        //_________________________________________________________________________________________________________
        //                                                                                    C O N S T R U C T O R

        public function AudioCacheEvent( type:String )
        {
            super( type, true );
        }

        //_________________________________________________________________________________________________________
        //                                                                              P U B L I C   M E T H O D S

        //_________________________________________________________________________________________________________
        //                                                                            G E T T E R S / S E T T E R S

        //_________________________________________________________________________________________________________
        //                                                                              E V E N T   H A N D L E R S

        //_________________________________________________________________________________________________________
        //                                                                        P R O T E C T E D   M E T H O D S

        //_________________________________________________________________________________________________________
        //                                                                            P R I V A T E   M E T H O D S
    }
}
