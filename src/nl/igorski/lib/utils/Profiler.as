package nl.igorski.lib.utils
{
    import flash.utils.getTimer;
	/**
     * ...
     * @author Igor Zinken
     * 
     * Profiler is a class for quickly testing the time spent performing
     *          tasks. Note: the function of this class is to give a general
     *          idea which function performs faster than others, for more accurate
     *          timing tests, these functions should be run in inline code
     */
    public final class Profiler 
    {
        private var startTime:Number;
        
        /*
         * @autoStart set to true to immediately set the startTime
         *            during instantiation
         */
        public function Profiler( autoStart:Boolean = true ) 
        {
            if ( autoStart )
                start();
        }
        
        /*
         * set the start time, should be set when
         * starting the test
         */
        public function start():void
        {
            startTime = getTimer();
        }
        
        /*
         * set the "end point" for the test, and immediately
         * return the time difference between end and start points
         */
        public function stop():Number
        {
            return ( getTimer() - startTime );
        }
    }
}
