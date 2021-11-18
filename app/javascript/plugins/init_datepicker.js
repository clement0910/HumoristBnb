import Datepicker from '@themesberg/tailwind-datepicker/js/Datepicker';
import DateRangePicker from '@themesberg/tailwind-datepicker/js/DateRangePicker';
const initDatepicker = () => {
    // const datepickerEl = document.getElementById('datepickerId');
    // new Datepicker(datepickerEl, {});
    const dateRangePickerEl = document.getElementById('dateRangePickerId');
    new DateRangePicker(dateRangePickerEl, {
        // options
    });
};


export { initDatepicker };
