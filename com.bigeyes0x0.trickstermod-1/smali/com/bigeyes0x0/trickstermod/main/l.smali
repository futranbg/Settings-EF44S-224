.class Lcom/bigeyes0x0/trickstermod/main/l;
.super Ljava/lang/Object;
.source "FragmentSysctlEditorMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/k;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/k;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/l;->a:Lcom/bigeyes0x0/trickstermod/main/k;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/l;->b:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/l;->a:Lcom/bigeyes0x0/trickstermod/main/k;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/k;->a(Lcom/bigeyes0x0/trickstermod/main/k;)Lcom/bigeyes0x0/trickstermod/main/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->b(Lcom/bigeyes0x0/trickstermod/main/j;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/l;->a:Lcom/bigeyes0x0/trickstermod/main/k;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/k;->a(Lcom/bigeyes0x0/trickstermod/main/k;)Lcom/bigeyes0x0/trickstermod/main/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->d(Lcom/bigeyes0x0/trickstermod/main/j;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/l;->a:Lcom/bigeyes0x0/trickstermod/main/k;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/k;->a(Lcom/bigeyes0x0/trickstermod/main/k;)Lcom/bigeyes0x0/trickstermod/main/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->b(Lcom/bigeyes0x0/trickstermod/main/j;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/l;->a:Lcom/bigeyes0x0/trickstermod/main/k;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/main/k;->a(Lcom/bigeyes0x0/trickstermod/main/k;)Lcom/bigeyes0x0/trickstermod/main/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/main/j;->b(Lcom/bigeyes0x0/trickstermod/main/j;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/l;->a:Lcom/bigeyes0x0/trickstermod/main/k;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/k;->a(Lcom/bigeyes0x0/trickstermod/main/k;)Lcom/bigeyes0x0/trickstermod/main/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->e(Lcom/bigeyes0x0/trickstermod/main/j;)Lcom/bigeyes0x0/trickstermod/main/a/o;

    move-result-object v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/l;->a:Lcom/bigeyes0x0/trickstermod/main/k;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/main/k;->a(Lcom/bigeyes0x0/trickstermod/main/k;)Lcom/bigeyes0x0/trickstermod/main/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/main/j;->b(Lcom/bigeyes0x0/trickstermod/main/j;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/o;->b(Ljava/util/AbstractMap$SimpleEntry;)I

    .line 105
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/l;->a:Lcom/bigeyes0x0/trickstermod/main/k;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/k;->a(Lcom/bigeyes0x0/trickstermod/main/k;)Lcom/bigeyes0x0/trickstermod/main/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->e(Lcom/bigeyes0x0/trickstermod/main/j;)Lcom/bigeyes0x0/trickstermod/main/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->notifyDataSetChanged()V

    .line 106
    return-void
.end method
