<script>
let count = 0
let double = 0

function handleClick() {
    count += 1;
}

$: {
    console.log(`the count is ${count}`)
    double = count * 2
    console.log(`double the count is ${double}`)
}
</script>

<button on:click={handleClick}>
    {double} by Clicked {count} {count === 1 ? 'time' : 'times'}
</button>
