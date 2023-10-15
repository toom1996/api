<?php

namespace App\Common;

enum HttpCode: int
{
    case OK = 0;

    case FAILED = 1001;
}
