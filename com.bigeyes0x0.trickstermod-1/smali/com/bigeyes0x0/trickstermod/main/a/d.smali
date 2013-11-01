.class public Lcom/bigeyes0x0/trickstermod/main/a/d;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field private static b:Lcom/bigeyes0x0/trickstermod/j;


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/widget/Switch;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/app/AlertDialog;

.field private p:Landroid/app/AlertDialog;

.field private q:Landroid/app/AlertDialog;

.field private r:Landroid/app/AlertDialog;

.field private s:Landroid/app/AlertDialog;

.field private t:Lcom/bigeyes0x0/trickstermod/a/a;

.field private u:Lcom/bigeyes0x0/trickstermod/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 57
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f080030

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    .line 80
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->d:Landroid/view/ViewGroup;

    .line 83
    const v0, 0x7f060047

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 82
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->e:Landroid/widget/CheckBox;

    .line 84
    const v0, 0x7f060048

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->f:Landroid/widget/CheckBox;

    .line 85
    const v0, 0x7f060049

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->g:Landroid/widget/CheckBox;

    .line 86
    const v0, 0x7f06004a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->h:Landroid/widget/CheckBox;

    .line 87
    const v0, 0x7f06004b

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->j:Landroid/widget/Button;

    .line 88
    const v0, 0x7f06004d

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->i:Landroid/widget/Switch;

    .line 89
    const v0, 0x7f06004c

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->k:Landroid/widget/Button;

    .line 90
    const v0, 0x7f06004e

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->l:Landroid/widget/Button;

    .line 91
    const v0, 0x7f06004f

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->m:Landroid/widget/Button;

    .line 92
    const v0, 0x7f060050

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->n:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->e:Landroid/widget/CheckBox;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->f:Landroid/widget/CheckBox;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->g:Landroid/widget/CheckBox;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->h:Landroid/widget/CheckBox;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->i:Landroid/widget/Switch;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 100
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->q()I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->j:Landroid/widget/Button;

    .line 102
    const v2, 0x7f080028

    new-array v3, v5, [Ljava/lang/Object;

    .line 103
    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-direct {p0, v6, v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    aput-object v0, v3, v4

    .line 101
    invoke-direct {p0, v2, v3}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->f()I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->k:Landroid/widget/Button;

    const v2, 0x7f08002a

    new-array v3, v5, [Ljava/lang/Object;

    .line 107
    if-nez v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-direct {p0, v6, v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_1
    aput-object v0, v3, v4

    .line 106
    invoke-direct {p0, v2, v3}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->l:Landroid/widget/Button;

    invoke-static {}, Lcom/bigeyes0x0/trickstermod/c;->values()[Lcom/bigeyes0x0/trickstermod/c;

    move-result-object v1

    sget-object v2, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/j;->k()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->m:Landroid/widget/Button;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->n()[Ljava/lang/String;

    move-result-object v1

    .line 111
    sget-object v2, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->m()[Ljava/lang/String;

    move-result-object v2

    .line 112
    sget-object v3, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/j;->u()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v2, v3}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    .line 114
    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/j;->r()I

    move-result v2

    aget-object v1, v1, v2

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->i:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void

    .line 104
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 108
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private a([Ljava/lang/String;I)Landroid/app/AlertDialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 372
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 374
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->n()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 378
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 379
    return-object v0
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/a/d;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 283
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/c;->values()[Lcom/bigeyes0x0/trickstermod/c;

    move-result-object v5

    .line 284
    array-length v6, v5

    move v2, v3

    :goto_0
    if-lt v2, v6, :cond_1

    .line 292
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    .line 293
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    check-cast v0, Landroid/app/ActivityManager;

    .line 294
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 298
    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    aget-object v1, v5, p1

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 315
    return-void

    .line 284
    :cond_1
    aget-object v0, v5, v2

    .line 286
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/c;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/c;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 285
    :goto_2
    invoke-virtual {v4, v7, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 284
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 288
    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    .line 299
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 300
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 302
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/bigeyes0x0/trickstermod/main/a/f;

    invoke-direct {v4, p0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/f;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/d;Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 308
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/main/a/d;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private b(I)Landroid/app/AlertDialog;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 318
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/a;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    .line 319
    const/4 v4, 0x0

    const/16 v5, 0xa

    move v3, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/a/a;-><init>(Landroid/content/Context;ZIIII)V

    .line 318
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->u:Lcom/bigeyes0x0/trickstermod/a/a;

    .line 320
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->u:Lcom/bigeyes0x0/trickstermod/a/a;

    .line 321
    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/a;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 322
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->u:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->u:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->u:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 325
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 326
    return-object v0
.end method

.method private c(I)Landroid/app/AlertDialog;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 330
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/c;->values()[Lcom/bigeyes0x0/trickstermod/c;

    move-result-object v5

    .line 331
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/a/g;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    .line 332
    const v3, 0x1090012

    .line 333
    const v4, 0x1020014

    move-object v1, p0

    move-object v6, v5

    .line 331
    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/main/a/g;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/d;Landroid/content/Context;II[Lcom/bigeyes0x0/trickstermod/c;[Lcom/bigeyes0x0/trickstermod/c;)V

    .line 359
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 365
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 366
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 367
    return-object v0
.end method

.method private d(I)Landroid/app/AlertDialog;
    .locals 6
    .parameter

    .prologue
    .line 383
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/a;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    const/4 v2, 0x1

    .line 384
    const/4 v3, 0x0

    const/4 v5, 0x5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bigeyes0x0/trickstermod/a/a;-><init>(Landroid/content/Context;ZZII)V

    .line 383
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->t:Lcom/bigeyes0x0/trickstermod/a/a;

    .line 385
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->t:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/a;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->t:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->t:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->t:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 389
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 390
    return-object v0
.end method

.method private e(I)Landroid/app/AlertDialog;
    .locals 3
    .parameter

    .prologue
    .line 394
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 397
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 400
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 401
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    const-string v0, "dialog_set_on_boot_delay_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "dialog_set_on_boot_delay_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->f(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/d;->d(I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->o:Landroid/app/AlertDialog;

    .line 227
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->t:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/a/a;->a(Ljava/lang/String;)V

    .line 229
    :cond_0
    const-string v0, "dialog_apply_protection_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const-string v0, "dialog_apply_protection_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->f(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/d;->b(I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->p:Landroid/app/AlertDialog;

    .line 233
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->u:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/a/a;->a(Ljava/lang/String;)V

    .line 235
    :cond_1
    const-string v0, "dialog_icon_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->k()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->c(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->q:Landroid/app/AlertDialog;

    .line 238
    :cond_2
    const-string v0, "dialog_language_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    const-string v0, "dialog_language_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "dialog_language_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 239
    invoke-direct {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a([Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->r:Landroid/app/AlertDialog;

    .line 243
    :cond_3
    const-string v0, "dialog_theme_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->e(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->s:Landroid/app/AlertDialog;

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->d:Landroid/view/ViewGroup;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/a/e;

    invoke-direct {v1, p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/e;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/d;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 256
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "dialog_set_on_boot_delay_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string v0, "dialog_set_on_boot_delay_value"

    .line 259
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->t:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/a/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->p:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->p:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "dialog_apply_protection_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string v0, "dialog_apply_protection_value"

    .line 265
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->u:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/a/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->r:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->r:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const-string v0, "dialog_language_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    const-string v0, "dialog_language_value"

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->r:Landroid/app/AlertDialog;

    .line 270
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    .line 269
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v3, "dialog_language_list"

    .line 272
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->r:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 271
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 274
    :cond_2
    const-string v3, "dialog_icon_state"

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->q:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->q:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 274
    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string v0, "dialog_theme_state"

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->s:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    .line 277
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->s:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 276
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    const-string v0, "scroll_position"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    return-void

    :cond_3
    move v0, v2

    .line 275
    goto :goto_0

    :cond_4
    move v1, v2

    .line 277
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->e:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1

    .line 135
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/j;->e(Z)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->f:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_2

    .line 137
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/j;->d(Z)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->g:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_3

    .line 139
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/j;->g(Z)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->h:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_4

    .line 141
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/j;->f(Z)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->i:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    .line 143
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/j;->h(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->o:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_2

    .line 151
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    .line 152
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->t:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/a/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/j;->d(I)V

    .line 153
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->q()I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->j:Landroid/widget/Button;

    const v2, 0x7f080028

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 155
    if-nez v0, :cond_1

    const v0, 0x7f080030

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v5}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    aput-object v0, v3, v4

    .line 154
    invoke-direct {p0, v2, v3}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 156
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->p:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_5

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->u:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->b()I

    move-result v0

    .line 162
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/j;->a(I)V

    .line 163
    if-nez v0, :cond_3

    .line 164
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/j;->c(Z)V

    .line 166
    :cond_3
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->f()I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->k:Landroid/widget/Button;

    .line 169
    const v2, 0x7f08002a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 170
    if-nez v0, :cond_4

    const v0, 0x7f080030

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v5}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_2
    aput-object v0, v3, v4

    .line 168
    invoke-direct {p0, v2, v3}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    goto :goto_1

    .line 171
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->q:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_7

    .line 175
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->k()I

    move-result v0

    if-eq p2, v0, :cond_6

    .line 176
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/j;->b(I)V

    .line 177
    invoke-direct {p0, p2}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(I)V

    .line 179
    :cond_6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->l:Landroid/widget/Button;

    invoke-static {}, Lcom/bigeyes0x0/trickstermod/c;->values()[Lcom/bigeyes0x0/trickstermod/c;

    move-result-object v1

    sget-object v2, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/j;->k()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->r:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_a

    .line 182
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->r:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 182
    check-cast v0, [Ljava/lang/String;

    .line 184
    aget-object v0, v0, p2

    .line 185
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 186
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/j;->e(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 188
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->o()Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_8
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->d(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 193
    :cond_9
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_1

    .line 194
    :cond_a
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->s:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 195
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->r()I

    move-result v0

    if-eq p2, v0, :cond_b

    .line 196
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/j;->e(I)V

    .line 197
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 199
    :cond_b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_1

    .line 157
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 206
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    .line 207
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->q()I

    move-result v0

    .line 206
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->d(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->o:Landroid/app/AlertDialog;

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 209
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    .line 210
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->f()I

    move-result v0

    .line 209
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->b(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->p:Landroid/app/AlertDialog;

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->l:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 212
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->k()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->c(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->q:Landroid/app/AlertDialog;

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->m:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 214
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->m()[Ljava/lang/String;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 215
    invoke-direct {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a([Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->r:Landroid/app/AlertDialog;

    goto :goto_0

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 218
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/a/d;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->e(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/d;->s:Landroid/app/AlertDialog;

    goto :goto_0
.end method
