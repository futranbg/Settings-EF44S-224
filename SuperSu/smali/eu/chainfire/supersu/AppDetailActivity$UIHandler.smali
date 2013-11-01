.class public abstract Leu/chainfire/supersu/AppDetailActivity$UIHandler;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Leu/chainfire/supersu/Settings;

.field private d:Leu/chainfire/supersu/Settings$App;

.field private e:Leu/chainfire/supersu/SpinnerHelper;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Leu/chainfire/supersu/SpinnerHelper;

.field private i:Leu/chainfire/supersu/SpinnerHelper;

.field private j:Leu/chainfire/supersu/SpinnerHelper;

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 12

    const v10, 0x1090009

    const/4 v3, 0x1

    const v9, 0x1090008

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->b:Ljava/lang/String;

    iput-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->c:Leu/chainfire/supersu/Settings;

    iput-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->f:J

    iput-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->g:Ljava/lang/String;

    iput-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    iput-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    iput-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    iput-boolean v2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    iput-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->l:Ljava/lang/String;

    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a:Landroid/app/Activity;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->b:Ljava/lang/String;

    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-direct {v0, p1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->c:Leu/chainfire/supersu/Settings;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->c:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p2}, Leu/chainfire/supersu/Settings;->c(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-wide v0, v0, Leu/chainfire/supersu/Settings$App;->c:J

    iput-wide v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->f:J

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-object v0, v0, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->g:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_12

    :try_start_1
    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const v1, 0x7f040022

    invoke-direct {p0, v1, v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f040028

    invoke-direct {p0, v1, p2}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(ILjava/lang/String;)V

    :cond_2
    invoke-static {p1}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    new-instance v1, Leu/chainfire/supersu/SpinnerHelper;

    const v4, 0x7f04002c

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v4}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-nez v1, :cond_4

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x7f0b0004

    invoke-direct {p0, v4}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->b(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v4, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    new-instance v4, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;

    invoke-direct {v4, p0, p1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;Landroid/app/Activity;)V

    invoke-virtual {v1, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget v1, v1, Leu/chainfire/supersu/Settings$App;->n:I

    packed-switch v1, :pswitch_data_0

    :goto_3
    new-instance v1, Leu/chainfire/supersu/SpinnerHelper;

    const v4, 0x7f04002d

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v4}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    const v1, 0x7f0b0006

    invoke-static {p1, v1, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v4, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget v1, v1, Leu/chainfire/supersu/Settings$App;->k:I

    packed-switch v1, :pswitch_data_1

    :goto_4
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    new-instance v4, Leu/chainfire/supersu/AppDetailActivity$UIHandler$2;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$2;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    invoke-virtual {v1, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Leu/chainfire/supersu/SpinnerHelper;

    const v4, 0x7f04002e

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v4}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v1, :cond_e

    const v1, 0x7f0b0005

    invoke-static {p1, v1, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v4, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget v1, v1, Leu/chainfire/supersu/Settings$App;->l:I

    packed-switch v1, :pswitch_data_2

    :goto_5
    if-eqz p2, :cond_3

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_3
    invoke-static {p1, p2, v0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    new-instance v1, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;

    invoke-direct {v1, p0, p1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_6
    new-instance v0, Leu/chainfire/supersu/SpinnerHelper;

    const v1, 0x7f04002f

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v0, :cond_11

    sget-object v0, Leu/chainfire/supersu/Constants;->e:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    move v0, v2

    move v1, v2

    :goto_7
    sget-object v4, Leu/chainfire/supersu/Constants;->e:[I

    array-length v4, v4

    if-lt v0, v4, :cond_f

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p1, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v3, v0}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    new-instance v1, Leu/chainfire/supersu/AppDetailActivity$UIHandler$5;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$5;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_8
    invoke-virtual {p0, v2}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_9
    move-object v11, v0

    move-object v0, p2

    move-object p2, v11

    goto/16 :goto_1

    :cond_4
    const v1, 0x7f0b0008

    invoke-direct {p0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->b(I)[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4

    add-int/lit8 v1, v1, 0x1

    new-array v5, v1, [Ljava/lang/CharSequence;

    move v1, v2

    :goto_a
    array-length v6, v4

    if-lt v1, v6, :cond_5

    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    const v4, 0x7f090047

    invoke-direct {p0, v4}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p1, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    aget-object v6, v4, v1

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :pswitch_0
    iget-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-object v1, v1, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_b
    invoke-virtual {v4, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_3

    :cond_6
    const/4 v1, 0x5

    goto :goto_b

    :cond_7
    move v1, v2

    goto :goto_b

    :pswitch_1
    iget-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-object v1, v1, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-wide v5, v1, Leu/chainfire/supersu/Settings$App;->c:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_8

    move v1, v3

    :goto_c
    invoke-virtual {v4, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x2

    goto :goto_c

    :cond_9
    const/4 v1, 0x5

    goto :goto_c

    :cond_a
    move v1, v3

    goto :goto_c

    :pswitch_2
    iget-object v4, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    iget-boolean v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-wide v5, v1, Leu/chainfire/supersu/Settings$App;->c:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_b

    const/4 v1, 0x3

    :goto_d
    invoke-virtual {v4, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_3

    :cond_b
    const/4 v1, 0x4

    goto :goto_d

    :cond_c
    const/4 v1, 0x2

    goto :goto_d

    :pswitch_3
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v1, v2}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v1, v3}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_4

    :pswitch_5
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_4

    :pswitch_6
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v1, v2}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v1, v3}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_5

    :pswitch_8
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    new-instance v1, Leu/chainfire/supersu/AppDetailActivity$UIHandler$4;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$4;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_6

    :cond_e
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {v0, p1, v9, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v1, v0}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/SpinnerHelper;->a(Z)V

    goto/16 :goto_6

    :cond_f
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Leu/chainfire/supersu/Constants;->e:[I

    aget v5, v5, v0

    invoke-static {v5}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Leu/chainfire/supersu/Constants;->e:[I

    aget v4, v4, v0

    iget-object v5, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget v5, v5, Leu/chainfire/supersu/Settings$App;->f:I

    if-ne v4, v5, :cond_10

    add-int/lit8 v1, v0, 0x1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_11
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p1, v9, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v1, v0}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/SpinnerHelper;->a(Z)V

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v0, p2

    goto/16 :goto_9

    :cond_12
    move-object v11, v0

    move-object v0, p2

    move-object p2, v11

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/AppDetailActivity$UIHandler;J)V
    .locals 0

    iput-wide p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->f:J

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    return v0
.end method

.method private b(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(IILandroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x1102

    const/4 v0, 0x3

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity Result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const/16 v1, 0x1101

    if-ne p1, v1, :cond_5

    if-eqz p3, :cond_0

    const-string v1, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PIN code result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    if-ne v0, v3, :cond_4

    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->l:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v3}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;ZIZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a()V

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_2

    if-eqz p3, :cond_6

    const-string v1, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_6
    if-ne v0, v3, :cond_b

    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a()V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->l:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->l:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a:Landroid/app/Activity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    new-instance v2, Leu/chainfire/supersu/AppDetailActivity$UIHandler$6;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$6;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/AppDetailActivity$UIHandler$7;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$7;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_a
    invoke-static {v0}, Leu/chainfire/supersu/Settings;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->g:Ljava/lang/String;

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a()V

    goto/16 :goto_0
.end method

.method public abstract a(Z)V
.end method

.method public b()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0}, Leu/chainfire/supersu/SpinnerHelper;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0}, Leu/chainfire/supersu/SpinnerHelper;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0}, Leu/chainfire/supersu/SpinnerHelper;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :goto_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0}, Leu/chainfire/supersu/SpinnerHelper;->a()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v8, v0, Leu/chainfire/supersu/Settings$App;->f:I

    :cond_1
    :goto_3
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->e()V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->c:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-wide v5, v0, Leu/chainfire/supersu/Settings$App;->c:J

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-object v4, v0, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v7, v0, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-wide v5, v0, Leu/chainfire/supersu/Settings$App;->c:J

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-object v4, v0, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v7, v0, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-wide v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->f:J

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->c:J

    :goto_4
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-object v4, v0, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-wide v5, v0, Leu/chainfire/supersu/Settings$App;->c:J

    goto :goto_4

    :pswitch_3
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-wide v5, v0, Leu/chainfire/supersu/Settings$App;->c:J

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-object v4, v0, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-wide v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->f:J

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->c:J

    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-object v4, v0, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput-wide v5, v0, Leu/chainfire/supersu/Settings$App;->c:J

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->g:Ljava/lang/String;

    iput-object v1, v0, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v8, v0, Leu/chainfire/supersu/Settings$App;->k:I

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v7, v0, Leu/chainfire/supersu/Settings$App;->k:I

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->k:I

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v8, v0, Leu/chainfire/supersu/Settings$App;->l:I

    goto/16 :goto_2

    :pswitch_a
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->l:I

    goto/16 :goto_2

    :pswitch_b
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v7, v0, Leu/chainfire/supersu/Settings$App;->l:I

    goto/16 :goto_2

    :pswitch_c
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->l:I

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    sget-object v1, Leu/chainfire/supersu/Constants;->e:[I

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v2}, Leu/chainfire/supersu/SpinnerHelper;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->f:I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->c:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->e:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->i:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->h:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->j:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
