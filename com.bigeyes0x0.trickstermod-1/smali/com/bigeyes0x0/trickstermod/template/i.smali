.class public Lcom/bigeyes0x0/trickstermod/template/i;
.super Lcom/bigeyes0x0/trickstermod/template/d;
.source "SettingProfile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/bigeyes0x0/trickstermod/template/b;


# instance fields
.field private k:Landroid/app/AlertDialog;

.field private l:Landroid/app/AlertDialog;

.field private m:Lcom/bigeyes0x0/trickstermod/a/b;

.field private n:Lcom/bigeyes0x0/trickstermod/template/j;

.field private o:[Ljava/lang/String;

.field private p:[Lcom/bigeyes0x0/trickstermod/template/a;

.field private q:Landroid/content/SharedPreferences;

.field private r:Landroid/content/SharedPreferences$Editor;

.field private s:Lcom/bigeyes0x0/trickstermod/template/j;

.field private t:Ljava/util/ArrayList;

.field private u:Ljava/util/HashMap;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/template/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    new-instance v0, Lcom/bigeyes0x0/trickstermod/template/j;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bigeyes0x0/trickstermod/template/j;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->t:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->u:Ljava/util/HashMap;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->v:Z

    .line 177
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    const v1, 0x7f080074

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/j;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p0}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Lcom/bigeyes0x0/trickstermod/template/b;)V

    .line 180
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 3
    .parameter

    .prologue
    .line 586
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->m:Lcom/bigeyes0x0/trickstermod/a/b;

    .line 587
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->m:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/b;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 588
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->m:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/a/b;->a(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->m:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f080020

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/b;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->m:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/b;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 591
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->m:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/b;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 592
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 593
    return-object v0
.end method

.method private a(Landroid/widget/Button;Lcom/bigeyes0x0/trickstermod/template/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 510
    if-eqz p2, :cond_0

    .line 511
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    if-ne p2, v1, :cond_1

    .line 512
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 513
    const v0, 0x7f080078

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p2}, Lcom/bigeyes0x0/trickstermod/template/j;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 516
    const v0, 0x7f080077

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    new-instance v0, Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/j;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Lcom/bigeyes0x0/trickstermod/template/j;)V

    .line 191
    return-void
.end method

.method private f()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 555
    const v1, 0x7f080020

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 558
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 559
    return-object v0
.end method

.method private getCurrentValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 326
    return-object v1

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/template/a;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 321
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(I)Landroid/app/AlertDialog;
    .locals 3
    .parameter

    .prologue
    .line 564
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 566
    const v0, 0x7f080020

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    const v0, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 568
    const v0, 0x7f080078

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getValueList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 571
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/template/j;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/template/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 576
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 579
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 580
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getSelectedProfile()Lcom/bigeyes0x0/trickstermod/template/j;

    move-result-object v2

    .line 579
    invoke-direct {p0, v1, v2}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Landroid/widget/Button;Lcom/bigeyes0x0/trickstermod/template/j;)V

    .line 581
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 582
    return-object v0
.end method

.method protected a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 286
    :try_start_0
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/i;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->h:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v1, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 293
    sget-object v2, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/template/i;->setProfileKeys([Ljava/lang/String;)V

    .line 296
    const/4 v2, 0x2

    aget-object v2, v1, v2

    if-eqz v2, :cond_1

    .line 297
    sget-object v2, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 298
    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_2

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseSetting: Error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 298
    :cond_2
    :try_start_1
    aget-object v3, v1, v0

    .line 299
    sget-object v4, Lcom/bigeyes0x0/trickstermod/template/i;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v4, v3}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    sget-object v5, Lcom/bigeyes0x0/trickstermod/template/i;->b:Lcom/bigeyes0x0/trickstermod/h;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 301
    sget-object v5, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 302
    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 304
    const-string v5, "value"

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    sget-object v5, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 307
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    return-void
.end method

.method public a(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->v:Z

    if-eqz v0, :cond_0

    .line 465
    iput-boolean v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->v:Z

    .line 466
    if-ne p1, p0, :cond_1

    .line 467
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 468
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->b(I)Lcom/bigeyes0x0/trickstermod/template/j;

    move-result-object v0

    .line 469
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->b(Lcom/bigeyes0x0/trickstermod/template/j;)V

    .line 485
    :goto_0
    iput-boolean v3, p0, Lcom/bigeyes0x0/trickstermod/template/i;->v:Z

    .line 488
    :cond_0
    return-void

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getCurrentValues()[Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/template/j;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/j;

    .line 476
    if-nez v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v0, v3}, Lcom/bigeyes0x0/trickstermod/template/j;->a(Z)V

    .line 478
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getCurrentValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/j;->b([Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/template/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v1, v2}, Lcom/bigeyes0x0/trickstermod/template/j;->a(Z)V

    .line 482
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/template/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/bigeyes0x0/trickstermod/template/j;)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->u:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/template/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/template/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->a(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/d;->a(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/template/a;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Lcom/bigeyes0x0/trickstermod/template/d;->a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/template/a;)V

    .line 220
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    new-instance v0, Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/j;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Lcom/bigeyes0x0/trickstermod/template/j;)V

    .line 202
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    return-void
.end method

.method public b(I)Lcom/bigeyes0x0/trickstermod/template/j;
    .locals 1
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->d()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/j;

    .line 333
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    goto :goto_0
.end method

.method public b(Lcom/bigeyes0x0/trickstermod/template/j;)V
    .locals 4
    .parameter

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/template/j;->c()[Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 227
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->c()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 234
    :cond_0
    return-void

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    aget-object v2, v2, v0

    .line 229
    if-eqz v2, :cond_2

    .line 230
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/bigeyes0x0/trickstermod/template/a;->setValue(Ljava/lang/String;)V

    .line 227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/d;->b(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 3
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/bigeyes0x0/trickstermod/template/a;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    .line 245
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    .line 252
    :cond_0
    return-void

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    aput-object v0, v2, v1

    .line 247
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->p:[Lcom/bigeyes0x0/trickstermod/template/a;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Lcom/bigeyes0x0/trickstermod/template/b;)V

    .line 245
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public c(Lcom/bigeyes0x0/trickstermod/template/j;)V
    .locals 2
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->u:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/template/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/template/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->b(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/i;->b(Lcom/bigeyes0x0/trickstermod/template/j;)V

    .line 496
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->r:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/template/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->r:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 274
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/j;

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/template/j;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lcom/bigeyes0x0/trickstermod/template/j;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 275
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/template/j;->a(Z)V

    .line 276
    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Lcom/bigeyes0x0/trickstermod/template/j;)V

    .line 277
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->setSelectedIndex(I)V

    .line 279
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->r:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/template/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/template/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->r:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 352
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getProfileKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedProfile()Lcom/bigeyes0x0/trickstermod/template/j;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/template/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    .line 346
    :goto_0
    return-object v0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/j;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 363
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->b(I)Lcom/bigeyes0x0/trickstermod/template/j;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->s:Lcom/bigeyes0x0/trickstermod/template/j;

    .line 365
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 366
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->s:Lcom/bigeyes0x0/trickstermod/template/j;

    .line 364
    invoke-direct {p0, v1, v2}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Landroid/widget/Button;Lcom/bigeyes0x0/trickstermod/template/j;)V

    .line 367
    packed-switch p2, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 369
    :pswitch_1
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->s:Lcom/bigeyes0x0/trickstermod/template/j;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    if-eq v1, v2, :cond_0

    .line 370
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->setSelectedIndex(I)V

    .line 371
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/j;->a(Z)V

    goto :goto_0

    .line 375
    :pswitch_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->s:Lcom/bigeyes0x0/trickstermod/template/j;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    if-ne v0, v1, :cond_2

    .line 376
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-direct {p0, v3}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->k:Landroid/app/AlertDialog;

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bigeyes0x0/trickstermod/k;->a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->k:Landroid/app/AlertDialog;

    goto :goto_0

    .line 383
    :cond_2
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->f()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->l:Landroid/app/AlertDialog;

    goto :goto_0

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->l:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->s:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->c(Lcom/bigeyes0x0/trickstermod/template/j;)V

    goto :goto_0

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->k:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->m:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 392
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f080075

    .line 393
    const/4 v2, 0x1

    .line 392
    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0

    .line 395
    :cond_5
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 402
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 403
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 404
    const-string v1, "has_profile_none"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v1, v3}, Lcom/bigeyes0x0/trickstermod/template/j;->a(Z)V

    .line 406
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    const-string v2, "profile_none_hash"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bigeyes0x0/trickstermod/template/j;->b([Ljava/lang/String;)V

    .line 408
    :cond_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/d;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 410
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    const-string v1, "dialog_profile_chooser_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 412
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 414
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 415
    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/i;->b(I)Lcom/bigeyes0x0/trickstermod/template/j;

    move-result-object v1

    .line 413
    invoke-direct {p0, v2, v1}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Landroid/widget/Button;Lcom/bigeyes0x0/trickstermod/template/j;)V

    .line 417
    :cond_1
    const-string v1, "dialog_new_profile_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    const-string v1, "dialog_new_profile_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-direct {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/i;->a(Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->k:Landroid/app/AlertDialog;

    .line 425
    :cond_2
    :goto_0
    const-string v1, "dialog_delete_profile_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->t:Ljava/util/ArrayList;

    .line 427
    const-string v2, "dialog_delete_profile_index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 426
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/j;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->s:Lcom/bigeyes0x0/trickstermod/template/j;

    .line 428
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->f()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->l:Landroid/app/AlertDialog;

    .line 430
    :cond_3
    return-void

    .line 422
    :cond_4
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->k:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x1

    .line 434
    .line 435
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    move v1, v0

    .line 439
    :goto_0
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 440
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 441
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v4}, Lcom/bigeyes0x0/trickstermod/template/j;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    const-string v4, "has_profile_none"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    const-string v4, "profile_none_hash"

    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/template/i;->n:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v5}, Lcom/bigeyes0x0/trickstermod/template/j;->c()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 445
    :cond_0
    if-eq v1, v2, :cond_1

    .line 446
    const-string v2, "dialog_profile_chooser_index"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->k:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->k:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    const-string v1, "dialog_new_profile_status"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    const-string v1, "dialog_new_profile_value"

    .line 452
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->m:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_2
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->l:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->l:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    const-string v1, "dialog_delete_profile_status"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 457
    const-string v1, "dialog_delete_profile_index"

    .line 458
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/i;->t:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/template/i;->s:Lcom/bigeyes0x0/trickstermod/template/j;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 457
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    :cond_3
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public varargs setProfileKeys([Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 522
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 524
    array-length v3, p1

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 528
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->q:Landroid/content/SharedPreferences;

    .line 529
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->r:Landroid/content/SharedPreferences$Editor;

    .line 530
    return-void

    .line 524
    :cond_0
    aget-object v4, p1, v0

    .line 525
    sget-object v5, Lcom/bigeyes0x0/trickstermod/template/i;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v5, v4}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs setProfileKeysNumGroup([Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 533
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/i;->o:[Ljava/lang/String;

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 535
    array-length v3, p1

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 539
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->q:Landroid/content/SharedPreferences;

    .line 540
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/i;->r:Landroid/content/SharedPreferences$Editor;

    .line 541
    return-void

    .line 535
    :cond_0
    aget-object v4, p1, v0

    .line 536
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 548
    :cond_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/d;->setValue(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0, p0, p1}, Lcom/bigeyes0x0/trickstermod/template/i;->a_(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V

    .line 550
    return-void
.end method
