.class Lcom/bigeyes0x0/trickstermod/main/a/p;
.super Landroid/widget/Filter;
.source "SysctlArrayAdapter.java"


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/o;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/o;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    .line 46
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .parameter

    .prologue
    .line 51
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(Lcom/bigeyes0x0/trickstermod/main/a/o;Ljava/util/ArrayList;)V

    .line 56
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    new-instance v1, Ljava/util/ArrayList;

    .line 58
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-static {v2}, Lcom/bigeyes0x0/trickstermod/main/a/o;->b(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/o;->b(Lcom/bigeyes0x0/trickstermod/main/a/o;Ljava/util/ArrayList;)V

    .line 61
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 64
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/o;->b(Lcom/bigeyes0x0/trickstermod/main/a/o;Ljava/util/ArrayList;)V

    .line 83
    :goto_0
    return-object v3

    .line 67
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/bigeyes0x0/trickstermod/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 70
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 81
    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 73
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->c(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->c(Lcom/bigeyes0x0/trickstermod/main/a/o;Ljava/util/ArrayList;)V

    .line 90
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/p;->a:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->notifyDataSetChanged()V

    .line 91
    return-void
.end method
