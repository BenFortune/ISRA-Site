<isra-events-section>
    <div class="isra-events-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2>Upcoming ISRA Events</h2>
                    <ul>
                        <li class="row">
                            <div class="col-sm-12">
                                <a href="#">Some Event Link</a>
                            </div>
                        </li>
                        <li class="row">
                            <div class="col-sm-12">
                                <a href="#">Some Event Link</a>
                            </div>
                        </li>
                        <li class="row">
                            <div class="col-sm-12">
                                <a href="#">Some Event Link</a>
                            </div>
                        </li>
                        <li class="row">
                            <div class="col-sm-12">
                                <a href="#">Some Event Link</a>
                            </div>
                        </li>
                        <li class="row">
                            <div class="col-sm-12">
                                <a href="#">Some Event Link</a>
                            </div>
                        </li>
                        <ul id="isra-more-events">
                            <li class="row">
                                <div class="col-sm-12">
                                    <a href="#">Some Event Link</a>
                                </div>
                            </li>
                            <li class="row">
                                <div class="col-sm-12">
                                    <a href="#">Some Event Link</a>
                                </div>
                            </li>
                            <li class="row">
                                <div class="col-sm-12">
                                    <a href="#">Some Event Link</a>
                                </div>
                            </li>
                            <li class="row">
                                <div class="col-sm-12">
                                    <a href="#">Some Event Link</a>
                                </div>
                            </li>
                            <li class="row">
                                <div class="col-sm-12">
                                    <a href="#">Some Event Link</a>
                                </div>
                            </li>
                        </ul>
                        <li class="row">
                            <div class="col-sm-12">
                                <button id="isra-show-more-events" class="btn btn-primary btn-lg" type="button">More Events</button>
                                <a id="isra-all-events" class="btn btn-primary btn-lg" href="isra-events.html">See All Events</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.on('*', function() {
            if (this.isMounted) {
                function showAllEvents() {
                    document.getElementById('isra-more-events').style.display = 'block';
                    document.getElementById('isra-show-more-events').style.display = 'none';
                    document.getElementById('isra-all-events').style.display = 'inline';
                }

                document.getElementById('isra-show-more-events').addEventListener('click', showAllEvents.bind(null));
            }
        });
    </script>
</isra-events-section>
