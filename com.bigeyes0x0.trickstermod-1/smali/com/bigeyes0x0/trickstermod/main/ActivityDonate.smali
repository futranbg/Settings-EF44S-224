.class public Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;
.super Landroid/app/ListActivity;
.source "ActivityDonate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lme/timos/a/a/i;
.implements Lme/timos/a/a/k;
.implements Lme/timos/a/a/l;
.implements Lme/timos/a/a/m;


# static fields
.field private static a:Lcom/bigeyes0x0/trickstermod/TrApp;


# instance fields
.field private b:Landroid/app/AlertDialog;

.field private c:Lme/timos/a/a/b;

.field private d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 2
    .parameter

    .prologue
    .line 279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 284
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 286
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 246
    const/16 v0, 0x188

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Lme/timos/a/a/b;

    invoke-direct {v1, p0, v0}, Lme/timos/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    .line 275
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    invoke-virtual {v0, p0}, Lme/timos/a/a/b;->a(Lme/timos/a/a/l;)V

    .line 276
    return-void

    .line 246
    :array_0
    .array-data 0x2
        0x40t 0x0t
        0x3ct 0x0t
        0x3ct 0x0t
        0x35t 0x0t
        0x3ct 0x0t
        0x5dt 0x0t
        0x34t 0x0t
        0x41t 0x0t
        0x35t 0x0t
        0x5at 0x0t
        0x5et 0x0t
        0x64t 0x0t
        0x5bt 0x0t
        0x5et 0x0t
        0x5ct 0x0t
        0x3at 0x0t
        0x2ct 0x0t
        0x6at 0x0t
        0x23t 0x0t
        0x35t 0x0t
        0x34t 0x0t
        0x44t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x42t 0x0t
        0x36t 0x0t
        0x34t 0x0t
        0x44t 0x0t
        0x2bt 0x0t
        0x34t 0x0t
        0x40t 0x0t
        0x3ct 0x0t
        0x3ct 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x5at 0x0t
        0x3et 0x0t
        0x36t 0x0t
        0x34t 0x0t
        0x44t 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x60t 0x0t
        0x27t 0x0t
        0x34t 0x0t
        0x65t 0x0t
        0x5et 0x0t
        0x29t 0x0t
        0x62t 0x0t
        0x4dt 0x0t
        0x47t 0x0t
        0x3et 0x0t
        0x2bt 0x0t
        0x56t 0x0t
        0x44t 0x0t
        0x3ct 0x0t
        0x48t 0x0t
        0x40t 0x0t
        0x6bt 0x0t
        0x66t 0x0t
        0x22t 0x0t
        0x61t 0x0t
        0x36t 0x0t
        0x3ct 0x0t
        0x66t 0x0t
        0x61t 0x0t
        0x48t 0x0t
        0x46t 0x0t
        0x4ct 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3ct 0x0t
        0x58t 0x0t
        0x6ct 0x0t
        0x56t 0x0t
        0x3ft 0x0t
        0x25t 0x0t
        0x27t 0x0t
        0x24t 0x0t
        0x3dt 0x0t
        0x24t 0x0t
        0x55t 0x0t
        0x6bt 0x0t
        0x1et 0x0t
        0x28t 0x0t
        0x47t 0x0t
        0x5ft 0x0t
        0x54t 0x0t
        0x26t 0x0t
        0x44t 0x0t
        0x57t 0x0t
        0x35t 0x0t
        0x5ct 0x0t
        0x39t 0x0t
        0x4ct 0x0t
        0x4ct 0x0t
        0x69t 0x0t
        0x5at 0x0t
        0x46t 0x0t
        0x38t 0x0t
        0x3bt 0x0t
        0x28t 0x0t
        0x48t 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x54t 0x0t
        0x28t 0x0t
        0x47t 0x0t
        0x3ft 0x0t
        0x54t 0x0t
        0x24t 0x0t
        0x3ft 0x0t
        0x3at 0x0t
        0x3et 0x0t
        0x3bt 0x0t
        0x39t 0x0t
        0x62t 0x0t
        0x25t 0x0t
        0x47t 0x0t
        0x56t 0x0t
        0x69t 0x0t
        0x1et 0x0t
        0x42t 0x0t
        0x57t 0x0t
        0x42t 0x0t
        0x5et 0x0t
        0x6bt 0x0t
        0x65t 0x0t
        0x4at 0x0t
        0x55t 0x0t
        0x2at 0x0t
        0x6ct 0x0t
        0x2bt 0x0t
        0x38t 0x0t
        0x40t 0x0t
        0x66t 0x0t
        0x26t 0x0t
        0x36t 0x0t
        0x29t 0x0t
        0x46t 0x0t
        0x40t 0x0t
        0x63t 0x0t
        0x46t 0x0t
        0x34t 0x0t
        0x2at 0x0t
        0x2ct 0x0t
        0x68t 0x0t
        0x27t 0x0t
        0x5at 0x0t
        0x22t 0x0t
        0x46t 0x0t
        0x28t 0x0t
        0x5et 0x0t
        0x39t 0x0t
        0x40t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x5dt 0x0t
        0x60t 0x0t
        0x60t 0x0t
        0x47t 0x0t
        0x59t 0x0t
        0x38t 0x0t
        0x40t 0x0t
        0x64t 0x0t
        0x57t 0x0t
        0x68t 0x0t
        0x39t 0x0t
        0x2ct 0x0t
        0x61t 0x0t
        0x44t 0x0t
        0x4dt 0x0t
        0x63t 0x0t
        0x4dt 0x0t
        0x5ct 0x0t
        0x3ft 0x0t
        0x60t 0x0t
        0x2bt 0x0t
        0x3et 0x0t
        0x25t 0x0t
        0x36t 0x0t
        0x38t 0x0t
        0x4bt 0x0t
        0x59t 0x0t
        0x58t 0x0t
        0x22t 0x0t
        0x64t 0x0t
        0x57t 0x0t
        0x41t 0x0t
        0x44t 0x0t
        0x28t 0x0t
        0x3ct 0x0t
        0x5ct 0x0t
        0x46t 0x0t
        0x25t 0x0t
        0x6dt 0x0t
        0x64t 0x0t
        0x34t 0x0t
        0x54t 0x0t
        0x58t 0x0t
        0x1et 0x0t
        0x5dt 0x0t
        0x62t 0x0t
        0x46t 0x0t
        0x44t 0x0t
        0x49t 0x0t
        0x34t 0x0t
        0x64t 0x0t
        0x5et 0x0t
        0x47t 0x0t
        0x58t 0x0t
        0x4ct 0x0t
        0x2at 0x0t
        0x45t 0x0t
        0x24t 0x0t
        0x5bt 0x0t
        0x67t 0x0t
        0x54t 0x0t
        0x47t 0x0t
        0x3bt 0x0t
        0x42t 0x0t
        0x36t 0x0t
        0x2at 0x0t
        0x58t 0x0t
        0x69t 0x0t
        0x2at 0x0t
        0x5ct 0x0t
        0x6bt 0x0t
        0x28t 0x0t
        0x68t 0x0t
        0x3bt 0x0t
        0x28t 0x0t
        0x6at 0x0t
        0x46t 0x0t
        0x38t 0x0t
        0x6bt 0x0t
        0x56t 0x0t
        0x24t 0x0t
        0x1et 0x0t
        0x4ct 0x0t
        0x54t 0x0t
        0x45t 0x0t
        0x5ct 0x0t
        0x61t 0x0t
        0x26t 0x0t
        0x47t 0x0t
        0x3ct 0x0t
        0x55t 0x0t
        0x26t 0x0t
        0x61t 0x0t
        0x65t 0x0t
        0x27t 0x0t
        0x38t 0x0t
        0x4at 0x0t
        0x3et 0x0t
        0x6dt 0x0t
        0x4ct 0x0t
        0x25t 0x0t
        0x3dt 0x0t
        0x43t 0x0t
        0x54t 0x0t
        0x39t 0x0t
        0x40t 0x0t
        0x60t 0x0t
        0x5at 0x0t
        0x5ft 0x0t
        0x3bt 0x0t
        0x40t 0x0t
        0x6ct 0x0t
        0x45t 0x0t
        0x61t 0x0t
        0x4dt 0x0t
        0x5dt 0x0t
        0x26t 0x0t
        0x2bt 0x0t
        0x54t 0x0t
        0x60t 0x0t
        0x34t 0x0t
        0x22t 0x0t
        0x5at 0x0t
        0x5at 0x0t
        0x2at 0x0t
        0x2ct 0x0t
        0x62t 0x0t
        0x4ct 0x0t
        0x49t 0x0t
        0x34t 0x0t
        0x4bt 0x0t
        0x44t 0x0t
        0x5et 0x0t
        0x5dt 0x0t
        0x40t 0x0t
        0x39t 0x0t
        0x5at 0x0t
        0x5et 0x0t
        0x59t 0x0t
        0x35t 0x0t
        0x3ft 0x0t
        0x6at 0x0t
        0x64t 0x0t
        0x4at 0x0t
        0x56t 0x0t
        0x55t 0x0t
        0x67t 0x0t
        0x54t 0x0t
        0x5bt 0x0t
        0x3bt 0x0t
        0x22t 0x0t
        0x3at 0x0t
        0x5at 0x0t
        0x24t 0x0t
        0x63t 0x0t
        0x69t 0x0t
        0x5bt 0x0t
        0x29t 0x0t
        0x66t 0x0t
        0x22t 0x0t
        0x62t 0x0t
        0x40t 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x36t 0x0t
        0x2at 0x0t
        0x6at 0x0t
        0x64t 0x0t
        0x2at 0x0t
        0x2ct 0x0t
        0x4at 0x0t
        0x54t 0x0t
        0x54t 0x0t
        0x58t 0x0t
        0x61t 0x0t
        0x24t 0x0t
        0x4bt 0x0t
        0x69t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x43t 0x0t
        0x3ct 0x0t
        0x42t 0x0t
        0x4at 0x0t
        0x49t 0x0t
        0x2at 0x0t
        0x26t 0x0t
        0x4at 0x0t
        0x3ct 0x0t
        0x4dt 0x0t
        0x37t 0x0t
        0x26t 0x0t
        0x56t 0x0t
        0x66t 0x0t
        0x4bt 0x0t
        0x5at 0x0t
        0x2bt 0x0t
        0x5dt 0x0t
        0x42t 0x0t
        0x68t 0x0t
        0x47t 0x0t
        0x6dt 0x0t
        0x4ct 0x0t
        0x6bt 0x0t
        0x3dt 0x0t
        0x41t 0x0t
        0x34t 0x0t
        0x58t 0x0t
        0x68t 0x0t
        0x28t 0x0t
        0x26t 0x0t
        0x59t 0x0t
        0x62t 0x0t
        0x58t 0x0t
        0x5ft 0x0t
        0x6at 0x0t
        0x6at 0x0t
        0x62t 0x0t
        0x29t 0x0t
        0x4at 0x0t
        0x3dt 0x0t
        0x5et 0x0t
        0x3ct 0x0t
        0x38t 0x0t
        0x44t 0x0t
        0x62t 0x0t
        0x6at 0x0t
        0x3ct 0x0t
        0x37t 0x0t
        0x34t 0x0t
        0x44t 0x0t
        0x34t 0x0t
        0x35t 0x0t
    .end array-data
.end method


# virtual methods
.method public a(Lme/timos/a/a/n;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    invoke-virtual {p1}, Lme/timos/a/a/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problem setting up In-app Billing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->d:Landroid/os/Bundle;

    const-string v1, "dialog_donate_inapp_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->d:Landroid/os/Bundle;

    .line 165
    const-string v1, "dialog_donate_inapp_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->a([Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->b:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public a(Lme/timos/a/a/n;Lme/timos/a/a/o;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-virtual {p1}, Lme/timos/a/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problem getting in app inventory"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f07

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    .line 223
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lme/timos/a/a/b;->a(Ljava/util/List;Lme/timos/a/a/j;)V

    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 224
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->a([Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->b:Landroid/app/AlertDialog;

    goto :goto_0

    .line 214
    :cond_1
    aget-object v5, v3, v0

    .line 215
    invoke-virtual {p2, v5}, Lme/timos/a/a/o;->a(Ljava/lang/String;)Lme/timos/a/a/r;

    move-result-object v6

    invoke-virtual {v6}, Lme/timos/a/a/r;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p2, v5}, Lme/timos/a/a/o;->b(Ljava/lang/String;)Lme/timos/a/a/p;

    move-result-object v6

    .line 217
    if-eqz v6, :cond_2

    .line 218
    invoke-virtual {v6}, Lme/timos/a/a/p;->c()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2

    .line 219
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Item "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was purchased"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 214
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-virtual {p1}, Lme/timos/a/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error purchasing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->finish()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    invoke-virtual {v0, p2, p0}, Lme/timos/a/a/b;->a(Lme/timos/a/a/p;Lme/timos/a/a/i;)V

    goto :goto_0
.end method

.method public a(Lme/timos/a/a/p;Lme/timos/a/a/n;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p2}, Lme/timos/a/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error consuming: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->finish()V

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/c;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lme/timos/a/a/b;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "onActivityResult handled by IABUtil."

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->finish()V

    .line 71
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 76
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    const/16 v2, 0x2711

    invoke-virtual {v1, p0, v0, v2, p0}, Lme/timos/a/a/b;->a(Landroid/app/Activity;Ljava/lang/String;ILme/timos/a/a/k;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->setTitle(I)V

    .line 94
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->setTheme(I)V

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    const v1, 0x7f080004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98
    const v2, 0x7f02003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    const v1, 0x7f080005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100
    const v2, 0x7f02003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/b;

    .line 103
    const v3, 0x1090011

    const v4, 0x1020014

    move-object v1, p0

    move-object v2, p0

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/bigeyes0x0/trickstermod/main/b;-><init>(Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;Landroid/content/Context;IILjava/util/List;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->a()V

    .line 133
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    invoke-virtual {v0}, Lme/timos/a/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    .line 143
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->c()V

    .line 144
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 145
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 172
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    packed-switch p3, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->c:Lme/timos/a/a/b;

    .line 177
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    const/high16 v2, 0x7f07

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v3, v1, p0}, Lme/timos/a/a/b;->a(ZLjava/util/List;Lme/timos/a/a/m;)V

    goto :goto_0

    .line 181
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->i:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 185
    :cond_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->g:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->h:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 192
    const/high16 v2, 0x1

    .line 191
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    :cond_1
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f080045

    invoke-virtual {v0, v1, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->f:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 185
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->d:Landroid/os/Bundle;

    .line 231
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "ONSAVE"

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V

    .line 238
    const-string v0, "dialog_donate_inapp_state"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v1, "dialog_donate_inapp_list"

    .line 240
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 239
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 243
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 292
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "Errored startActivity: "

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
