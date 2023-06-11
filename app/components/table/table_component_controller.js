import { Controller } from "@hotwired/stimulus";
import dayjs from 'dayjs';
import ObjectSupport from 'dayjs/plugin/objectSupport';
export default class extends Controller {
  static targets = ['table', 'header', 'body', 'row', 'edit']
  static values = {
    edit: Boolean,
  }

  initialize() {
    this.normalizeBirthday()
    this.normalizeTable()
  }

  connect() {
    dayjs.extend(ObjectSupport)
    const x = dayjs({ year: 1900, hour: 15, minute: 10 });
    console.log(x);

  }













  normalizeBirthday() {
    const birthdays = document.querySelectorAll('td[data-type="birthday"]').forEach((birthday) => {
      const afterFormated = dayjs(birthday.innerText.replace(' UTC', '+0000')).format('DD/MM/YYYY')
      // console.log(afterFormated)
      birthday.firstElementChild.innerHTML = afterFormated
    })
  }

  normalizeTable() {
    this.editTargets.forEach((edit) => {
      edit.replaceChild(this.editSvg1(), edit.firstElementChild)
    })
  }













  editSvg1() {
    const svg = "<svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke-width='1.5' stroke='currentColor' class='w-6 h-6'><path stroke-linecap='round' stroke-linejoin='round' d='M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10' /></svg>"
    const editSvg = document.createRange().createContextualFragment(svg)
    return editSvg
  }
  editSvg2() {
    const svg = "<svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke-width='1.5' stroke='currentColor' class='w-6 h-6'><path stroke-linecap='round' stroke-linejoin='round' d='M4.5 12.75l6 6 9-13.5'/></svg>"
    const editSvg = document.createRange().createContextualFragment(svg)
    return editSvg
  }
  editSvg3() {
    const svg = "<svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke-width='1.5' stroke='currentColor' class='w-6 h-6 text-green-500'><path stroke-linecap='round' stroke-linejoin='round' d='M4.5 12.75l6 6 9-13.5'/></svg>"
    const editSvg = document.createRange().createContextualFragment(svg)
    return editSvg
  }
}
