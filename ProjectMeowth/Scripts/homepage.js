jQuery(document).ready(function ($) {
    var theme = localStorage.getItem('theme');
    var themeName = '';
    /*
    if (localStorage.getItem('theme') === null) {
        localStorage.setItem('theme', 'default');
    }
    */
    switch (theme) {
        case "valor":
            themeName = 'valor-bg';
            setBackground(themeName);
            break;

        case "instinct":
            themeName = 'instinct-bg';
            setBackground(themeName);
            break;

        case "mystic":
            themeName = 'mystic-bg';
            setBackground(themeName);
            break;

        case "none":
            themeName = 'blank-bg';
            setBackground(themeName);
            break;

        //case "default":
        default:
            themeName = 'trio-bg2';
            setBackground(themeName);
            break;
    }

    $('#valorBtn').click(function (e) {
        e.preventDefault();
        localStorage.setItem('theme', 'valor');
        themeName = 'valor-bg';
        setBackground(themeName);
    });

    $('#mysticBtn').click(function (e) {
        e.preventDefault();
        localStorage.setItem('theme', 'mystic');
        themeName = 'mystic-bg';
        setBackground(themeName);
    });

    $('#instinctBtn').click(function (e) {
        e.preventDefault();
        localStorage.setItem('theme', 'instinct');
        themeName = 'instinct-bg';
        setBackground(themeName);
    });

    $('#btnBlankBackground').click(function (e) {
        e.preventDefault();
        localStorage.setItem('theme', 'none');
        themeName = 'blank-bg';
        setBackground(themeName);
    });

    $('#defaultBtn').click(function (e) {
        e.preventDefault();
        localStorage.setItem('theme', 'default');
        themeName = 'trio-bg2';
        setBackground(themeName);
    });

    function setBackground(themeName) {
        if (themeName == 'blank-bg') {
            $('body').css('background', '#B4E1D9');
        } else {
            $('body').css('background-image', 'linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("/Content/Images/' + themeName + '.png")');
        }
    }
});