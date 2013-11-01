.class public Lcom/bigeyes0x0/trickstermod/main/f;
.super Landroid/support/v4/app/t;
.source "ActivityTricksterMod.java"


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;

.field private b:I

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;Landroid/support/v4/app/n;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 133
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/f;->a:Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;

    .line 134
    invoke-direct {p0, p2}, Landroid/support/v4/app/t;-><init>(Landroid/support/v4/app/n;)V

    .line 135
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    invoke-static {p1}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->b(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)Lcom/bigeyes0x0/trickstermod/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 136
    array-length v0, v2

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->b:I

    .line 137
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->b:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->c:[Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->c:[Ljava/lang/String;

    const-string v3, "INFOS_TAB"

    aput-object v3, v0, v1

    .line 139
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->c:[Ljava/lang/String;

    const-string v3, "TOOLS_TAB"

    aput-object v3, v0, v6

    .line 140
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->b:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->d:[Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->d:[Ljava/lang/String;

    invoke-static {p1}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->b(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)Lcom/bigeyes0x0/trickstermod/h;

    move-result-object v3

    .line 142
    const-string v4, "INFOS_TAB"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 141
    aput-object v3, v0, v1

    .line 143
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->d:[Ljava/lang/String;

    invoke-static {p1}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->b(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)Lcom/bigeyes0x0/trickstermod/h;

    move-result-object v3

    .line 144
    const-string v4, "TOOLS_TAB"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 143
    aput-object v3, v0, v6

    move v0, v1

    .line 145
    :goto_0
    iget v3, p0, Lcom/bigeyes0x0/trickstermod/main/f;->b:I

    if-lt v0, v3, :cond_0

    .line 149
    return-void

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/f;->c:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    aget-object v5, v2, v0

    aput-object v5, v3, v4

    .line 147
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/f;->d:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    invoke-static {p1}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->b(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)Lcom/bigeyes0x0/trickstermod/h;

    move-result-object v5

    aget-object v6, v2, v0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 164
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/n;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/main/n;-><init>()V

    .line 165
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 166
    const-string v2, "_fragment_key"

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/f;->c:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/n;->b(Landroid/os/Bundle;)V

    .line 168
    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/i;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/main/i;-><init>()V

    goto :goto_0

    .line 162
    :pswitch_1
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/p;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/main/p;-><init>()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public c(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/f;->d:[Ljava/lang/String;

    return-object v0
.end method
