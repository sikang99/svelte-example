<script>
export let bookTitle;
export let bookPages;
export let bookDescription;
</script>

<style>
div{
    margin: 1rem;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.26)
}
h1{
    font-size: 1.25rem;
    margin: 0.25rem 0;
}
h2{
    font-size: 1rem;
    margin: 0.25rem 0;
    color: aqua;
}
p{
    margin: 0.25rem 0;
}
button{
    font : larger;
    padding: 0.15rem 0.5rem;
    background-color: #1b1a1a;
    border: 1px solid  aliceblue ;
    cursor: pointer;
    color: white;
}
</style>

<div>
<h1> {bookTitle} </h1>
<h2> {bookPages}</h2>
<p> {bookDescription}</p>
<button> Add </button>
</div>