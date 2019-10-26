<script>
import Book from './book.svelte'
let title = '';
let pages = 0;
let description = '';
function setTitle(event){
    title = event.target.value;
}
</script>
<style>
h1 {
    color: purple;
}
section{
    margin: auto;
    width :30rem;
}
label,input,textarea{
    width: 100%;
}
</style>
<section>
    <div> 
        <label for="title">Title</label>
        <input type="text" id="title" value={title} on:input={setTitle}/>
    </div>
    <div>
        <label for="pages"> pages</label>
        <input type="number" id="price" value={pages} bind:value={pages}/>
    </div>
    <div>
        <label for="description">Description</label>
        <textarea rows="3" id="description" bind:value ={description}/>
    </div>
</section>
<Book bookTitle={title} bookPages={pages} bookDescription={description}/>