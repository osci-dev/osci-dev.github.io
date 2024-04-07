---
layout: default
---

発達障害児を育てるパパ [@osci-dev](https://twitter.com/osci_dev) のプログラミング置き場です 

自己紹介その他は上記 X(Twitter) にて

<br /><br /><br />

# 年齢⇔DQ計算機
<hr>

### ☆発達年齢を計算する

<table>
  <tr>
    <td width="30%">
      生活年齢（実年齢）
    </td>
    <td>
      <select id="ca_age_for_da">
        <option value="0">0歳</option>
        <option value="1">1歳</option>
        <option value="2">2歳</option>
        <option value="3">3歳</option>
        <option value="4">4歳</option>
        <option value="5">5歳</option>
        <option value="6">6歳</option>
        <option value="7">7歳</option>
        <option value="8">8歳</option>
        <option value="9">9歳</option>
        <option value="10">10歳</option>
        <option value="11">11歳</option>
        <option value="12">12歳</option>
        <option value="13">13歳</option>
        <option value="14">14歳</option>
        <option value="15">15歳</option>
        <option value="16">16歳</option>
        <option value="17">17歳</option>
        <option value="18">18歳</option>
        <option value="19">19歳</option>
        <option value="20">20歳</option>
      </select>
      <select id="ca_month_for_da">
        <option value="0">0ヶ月</option>
        <option value="1">1ヶ月</option>
        <option value="2">2ヶ月</option>
        <option value="3">3ヶ月</option>
        <option value="4">4ヶ月</option>
        <option value="5">5ヶ月</option>
        <option value="6">6ヶ月</option>
        <option value="7">7ヶ月</option>
        <option value="8">8ヶ月</option>
        <option value="9">9ヶ月</option>
        <option value="10">10ヶ月</option>
        <option value="11">11ヶ月</option>
      </select>
    </td>
  </tr>
    <tr>
      <td>
        DQ
      </td>
      <td>
        <input type="number" id="dq_for_da" maxlength="3" value="100" />
      </td>
    </tr>
  <tr>
    <td>
      発達年齢
    </td>
    <td>
      <div id="da_for_da">0歳0ヵ月</div>
    </td>
  </tr>
</table>

<script>
  function calc_da() {
    ca_age = document.getElementById('ca_age_for_da').value;
    ca_month = document.getElementById('ca_month_for_da').value;
    ca = Number(ca_age) * 12 + Number(ca_month);

    dq = Number(document.getElementById('dq_for_da').value);
    if (dq < 0) { dq = 0; }
    if (dq > 200) { dq = 200; }

    da = Math.round(ca * (dq / 100));
    document.getElementById('da_for_da').innerText = Math.round(da / 12) + '歳' + (da % 12) + 'ヵ月';
  }

  document.getElementById('ca_age_for_da').addEventListener('change', calc_da);
  document.getElementById('ca_month_for_da').addEventListener('change', calc_da);
  document.getElementById('dq_for_da').addEventListener('change', calc_da);
</script>

<br />

### ☆DQを計算する

<table>
  <tr>
    <td width="30%">
      生活年齢（実年齢）
    </td>
    <td>
      <select id="ca_age_for_dq">
        <option value="0">0歳</option>
        <option value="1">1歳</option>
        <option value="2">2歳</option>
        <option value="3">3歳</option>
        <option value="4">4歳</option>
        <option value="5">5歳</option>
        <option value="6">6歳</option>
        <option value="7">7歳</option>
        <option value="8">8歳</option>
        <option value="9">9歳</option>
        <option value="10">10歳</option>
        <option value="11">11歳</option>
        <option value="12">12歳</option>
        <option value="13">13歳</option>
        <option value="14">14歳</option>
        <option value="15">15歳</option>
        <option value="16">16歳</option>
        <option value="17">17歳</option>
        <option value="18">18歳</option>
        <option value="19">19歳</option>
        <option value="20">20歳</option>
      </select>
      <select id="ca_month_for_dq">
        <option value="0">0ヶ月</option>
        <option value="1">1ヶ月</option>
        <option value="2">2ヶ月</option>
        <option value="3">3ヶ月</option>
        <option value="4">4ヶ月</option>
        <option value="5">5ヶ月</option>
        <option value="6">6ヶ月</option>
        <option value="7">7ヶ月</option>
        <option value="8">8ヶ月</option>
        <option value="9">9ヶ月</option>
        <option value="10">10ヶ月</option>
        <option value="11">11ヶ月</option>
      </select>
    </td>
  </tr>
    <tr>
      <td>
        発達年齢
      </td>
      <td>
        <select id="da_age_for_dq">
          <option value="0">0歳</option>
          <option value="1">1歳</option>
          <option value="2">2歳</option>
          <option value="3">3歳</option>
          <option value="4">4歳</option>
          <option value="5">5歳</option>
          <option value="6">6歳</option>
          <option value="7">7歳</option>
          <option value="8">8歳</option>
          <option value="9">9歳</option>
          <option value="10">10歳</option>
          <option value="11">11歳</option>
          <option value="12">12歳</option>
          <option value="13">13歳</option>
          <option value="14">14歳</option>
          <option value="15">15歳</option>
          <option value="16">16歳</option>
          <option value="17">17歳</option>
          <option value="18">18歳</option>
          <option value="19">19歳</option>
          <option value="20">20歳</option>
        </select>
        <select id="da_month_for_dq">
          <option value="0">0ヶ月</option>
          <option value="1">1ヶ月</option>
          <option value="2">2ヶ月</option>
          <option value="3">3ヶ月</option>
          <option value="4">4ヶ月</option>
          <option value="5">5ヶ月</option>
          <option value="6">6ヶ月</option>
          <option value="7">7ヶ月</option>
          <option value="8">8ヶ月</option>
          <option value="9">9ヶ月</option>
          <option value="10">10ヶ月</option>
          <option value="11">11ヶ月</option>
        </select>
      </td>
    </tr>
  <tr>
    <td>
      DQ
    </td>
    <td>
      <div id="dq_for_dq">0</div>
    </td>
  </tr>
</table>

<script>
  function calc_dq() {
    ca_age = document.getElementById('ca_age_for_dq').value;
    ca_month = document.getElementById('ca_month_for_dq').value;
    ca = Number(ca_age) * 12 + Number(ca_month);

    da_age = document.getElementById('da_age_for_dq').value;
    da_month = document.getElementById('da_month_for_dq').value;
    da = Number(da_age) * 12 + Number(da_month);

    dq = Math.round((da / ca) * 100);
    document.getElementById('dq_for_dq').innerText = dq;
  }

  document.getElementById('ca_age_for_dq').addEventListener('change', calc_dq);
  document.getElementById('ca_month_for_dq').addEventListener('change', calc_dq);
  document.getElementById('da_age_for_dq').addEventListener('change', calc_dq);
  document.getElementById('da_month_for_dq').addEventListener('change', calc_dq);
</script>

