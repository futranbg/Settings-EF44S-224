.class public Leu/chainfire/supersu/PromptActivity;
.super Landroid/app/Activity;


# instance fields
.field private A:Landroid/os/Bundle;

.field public a:Landroid/view/View$OnLongClickListener;

.field public b:Landroid/view/View$OnLongClickListener;

.field private c:Landroid/os/PowerManager$WakeLock;

.field private d:Landroid/widget/CheckBox;

.field private e:Leu/chainfire/supersu/SpinnerHelper;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/Timer;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Leu/chainfire/supersu/Settings;

.field private q:Leu/chainfire/supersu/Settings$App;

.field private r:Z

.field private s:J

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    iput-object v1, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    iput-object v1, p0, Leu/chainfire/supersu/PromptActivity;->f:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/util/Timer;

    iput v2, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    iput v2, p0, Leu/chainfire/supersu/PromptActivity;->i:I

    iput v2, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    iput v3, p0, Leu/chainfire/supersu/PromptActivity;->m:I

    iput v3, p0, Leu/chainfire/supersu/PromptActivity;->n:I

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Ljava/lang/String;

    iput-object v1, p0, Leu/chainfire/supersu/PromptActivity;->p:Leu/chainfire/supersu/Settings;

    iput-object v1, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iput-boolean v2, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/PromptActivity;->s:J

    iput-boolean v2, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    iput-boolean v2, p0, Leu/chainfire/supersu/PromptActivity;->u:Z

    iput-boolean v2, p0, Leu/chainfire/supersu/PromptActivity;->v:Z

    iput-boolean v2, p0, Leu/chainfire/supersu/PromptActivity;->w:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->x:Z

    iput-boolean v2, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->z:Landroid/os/Handler;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    new-instance v0, Leu/chainfire/supersu/PromptActivity$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/PromptActivity$1;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/view/View$OnLongClickListener;

    new-instance v0, Leu/chainfire/supersu/PromptActivity$2;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/PromptActivity$2;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->v:Z

    if-nez v0, :cond_4

    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v0}, Leu/chainfire/supersu/SpinnerHelper;->a()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v3, 0x0

    iput-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->e(I)J

    move-result-wide v3

    iput-wide v3, p0, Leu/chainfire/supersu/PromptActivity;->s:J

    :goto_0
    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iput v0, v3, Leu/chainfire/supersu/Settings$App;->d:I

    :cond_1
    :goto_1
    const/4 v0, 0x2

    iget-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Leu/chainfire/supersu/PromptActivity;->s:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-wide v3, p0, Leu/chainfire/supersu/PromptActivity;->s:J

    iput-wide v3, v2, Leu/chainfire/supersu/Settings$App;->c:J

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iput v0, v2, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->e()V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->p:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)V

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v2, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v2, v3}, Leu/chainfire/supersu/Settings$App;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    invoke-static {v0}, Leu/chainfire/supersu/PromptQueue;->a(I)V

    :cond_4
    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->v:Z

    invoke-static {p0, v1}, Leu/chainfire/supersu/MainActivity;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    invoke-static {p0}, Leu/chainfire/supersu/PromptQueue;->a(Landroid/content/Context;)Z

    return-void

    :cond_5
    const/4 v3, 0x3

    :try_start_1
    invoke-static {v3}, Leu/chainfire/supersu/Constants;->e(I)J

    move-result-wide v3

    iput-wide v3, p0, Leu/chainfire/supersu/PromptActivity;->s:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_6
    :try_start_2
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    const/4 v3, 0x0

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->d:I

    goto :goto_1

    :cond_7
    iget-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    if-eqz v3, :cond_8

    iget-wide v3, p0, Leu/chainfire/supersu/PromptActivity;->s:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v2, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Leu/chainfire/supersu/Settings$App;->a(Landroid/content/Context;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private a(J)V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->w:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/util/Timer;

    iget v1, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-object v2, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;ILjava/lang/String;ZJ)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    invoke-virtual {p0, v6, v6}, Leu/chainfire/supersu/PromptActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    iput-wide p1, p0, Leu/chainfire/supersu/PromptActivity;->s:J

    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eu.chainfire.supersu.PromptActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x4084

    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_0

    const/high16 v0, 0x5084

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.code"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.appname"

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.pkgname"

    if-eqz p3, :cond_2

    :goto_1
    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.from_uid"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.to_uid"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.command"

    if-eqz p6, :cond_3

    :goto_2
    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p2, ""

    goto :goto_0

    :cond_2
    const-string p3, ""

    goto :goto_1

    :cond_3
    const-string p6, ""

    goto :goto_2
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity;I)V
    .locals 0

    iput p1, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/supersu/PromptActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/PromptActivity;->x:Z

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->z:Landroid/os/Handler;

    return-object v0
.end method

.method private b(J)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    iput-wide p1, p0, Leu/chainfire/supersu/PromptActivity;->s:J

    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Leu/chainfire/supersu/PromptActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/supersu/PromptActivity;->b(J)V

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/PromptActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    return-void
.end method

.method static synthetic c(Leu/chainfire/supersu/PromptActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    return-void
.end method

.method static synthetic c(Leu/chainfire/supersu/PromptActivity;)Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->x:Z

    return v0
.end method

.method static synthetic d(Leu/chainfire/supersu/PromptActivity;)I
    .locals 1

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    return v0
.end method

.method static synthetic d(Leu/chainfire/supersu/PromptActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/PromptActivity;->u:Z

    return-void
.end method

.method static synthetic e(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic f(Leu/chainfire/supersu/PromptActivity;)I
    .locals 1

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->i:I

    return v0
.end method

.method static synthetic g(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    return-object v0
.end method

.method static synthetic i(Leu/chainfire/supersu/PromptActivity;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->v:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-boolean v1, v1, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->u:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    :cond_0
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_d

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    invoke-virtual {v0}, Leu/chainfire/supersu/Application;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x1030073

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->setTheme(I)V

    :cond_0
    :goto_5
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->setContentView(I)V

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x7

    const v4, 0x7f03001e

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setFeatureInt(II)V

    :cond_1
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    const/high16 v1, 0x43dc

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.code"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.appname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.pkgname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.from_uid"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->m:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.to_uid"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.saved_counter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    :cond_9
    :goto_6
    return-void

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v0, 0x7

    goto/16 :goto_4

    :cond_f
    const v0, 0x103006f

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->setTheme(I)V

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_11

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_11

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_11

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_12

    :cond_11
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    goto :goto_6

    :cond_12
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    if-eqz v2, :cond_1b

    const/16 v0, 0x8

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    if-nez v0, :cond_14

    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_1c

    const/16 v0, 0x8

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    if-eqz v1, :cond_2c

    const v0, 0x7f040057

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    :goto_9
    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f04004e

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f04004f

    invoke-virtual {p0, v2}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f040052

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    const v3, 0x7f04004c

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Leu/chainfire/supersu/PromptActivity;->f:Landroid/widget/TextView;

    const v3, 0x7f040053

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f040054

    invoke-virtual {p0, v4}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f040051

    invoke-virtual {p0, v5}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f040055

    invoke-virtual {p0, v6}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v9, Leu/chainfire/supersu/SpinnerHelper;

    const v10, 0x7f040056

    invoke-virtual {p0, v10}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v9, v10}, Leu/chainfire/supersu/SpinnerHelper;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    new-instance v9, Leu/chainfire/supersu/Settings;

    invoke-direct {v9, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Leu/chainfire/supersu/PromptActivity;->p:Leu/chainfire/supersu/Settings;

    if-eqz v7, :cond_15

    iget-object v9, p0, Leu/chainfire/supersu/PromptActivity;->p:Leu/chainfire/supersu/Settings;

    invoke-virtual {v9}, Leu/chainfire/supersu/Settings;->c()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "icon"

    const-string v11, "emblem"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/chainfire/supersu/Settings;->b(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_15
    iget-object v9, p0, Leu/chainfire/supersu/PromptActivity;->p:Leu/chainfire/supersu/Settings;

    iget-object v7, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    :goto_a
    invoke-virtual {v9, v7}, Leu/chainfire/supersu/Settings;->c(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v7

    iput-object v7, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-boolean v7, p0, Leu/chainfire/supersu/PromptActivity;->y:Z

    if-eqz v7, :cond_22

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Leu/chainfire/supersu/Application;

    invoke-virtual {v3}, Leu/chainfire/supersu/Application;->g()I

    move-result v3

    iget-object v4, p0, Leu/chainfire/supersu/PromptActivity;->f:Landroid/widget/TextView;

    if-eqz v4, :cond_16

    iget-object v4, p0, Leu/chainfire/supersu/PromptActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    if-eqz v5, :cond_17

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_17
    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v4, v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aget-object v4, v4, v7

    aput-object v4, v3, v6

    :goto_b
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v4, p0, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v6, 0x1090009

    invoke-virtual {v4, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v6, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    invoke-virtual {v6, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    new-instance v6, Leu/chainfire/supersu/PromptActivity$3;

    invoke-direct {v6, p0}, Leu/chainfire/supersu/PromptActivity$3;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    invoke-virtual {v4, v6}, Leu/chainfire/supersu/SpinnerHelper;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v3, v3, Leu/chainfire/supersu/Settings$App;->d:I

    if-nez v3, :cond_1e

    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    :cond_18
    :goto_c
    const-string v3, "%s (%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget v7, p0, Leu/chainfire/supersu/PromptActivity;->m:I

    rem-int/lit16 v7, v7, 0x2710

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1a
    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v1, v1, Leu/chainfire/supersu/Settings$App;->n:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-object v1, v1, Leu/chainfire/supersu/Settings$App;->h:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget v1, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-object v2, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;ILjava/lang/String;ZJ)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->overridePendingTransition(II)V

    goto/16 :goto_6

    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_1d
    iget-object v7, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    goto/16 :goto_a

    :cond_1e
    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto :goto_c

    :cond_1f
    iget-object v4, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v4, v4, Leu/chainfire/supersu/Settings$App;->d:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_20

    iget-object v4, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v4, v4, Leu/chainfire/supersu/Settings$App;->d:I

    array-length v3, v3

    if-lt v4, v3, :cond_21

    :cond_20
    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_c

    :cond_21
    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->e:Leu/chainfire/supersu/SpinnerHelper;

    iget-object v4, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v4, v4, Leu/chainfire/supersu/Settings$App;->d:I

    invoke-virtual {v3, v4}, Leu/chainfire/supersu/SpinnerHelper;->a(I)V

    goto/16 :goto_c

    :cond_22
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-eqz v6, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_23
    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->p:Leu/chainfire/supersu/Settings;

    invoke-virtual {v1}, Leu/chainfire/supersu/Settings;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dev_permisison_warning"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz v5, :cond_24

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    invoke-static {p0, v1}, Leu/chainfire/supersu/Permission;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_24
    if-eqz v0, :cond_25

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_25
    :goto_d
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->m:I

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->p:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings;->d()Leu/chainfire/supersu/Settings$Default;

    move-result-object v0

    iget v0, v0, Leu/chainfire/supersu/Settings$Default;->m:I

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    :cond_26
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->i:I

    if-lez v8, :cond_2a

    iput v8, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    :cond_27
    :goto_f
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    if-lez v0, :cond_9

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->f:Landroid/widget/TextView;

    iget v1, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/util/Timer;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/util/Timer;

    new-instance v1, Leu/chainfire/supersu/PromptActivity$4;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/PromptActivity$4;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_6

    :cond_28
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    :cond_29
    const/4 v0, 0x0

    goto :goto_e

    :cond_2a
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    if-lez v0, :cond_27

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->h:I

    goto :goto_f

    :catch_0
    move-exception v0

    goto :goto_d

    :cond_2b
    move-object v3, v4

    goto/16 :goto_b

    :cond_2c
    move-object v7, v0

    goto/16 :goto_9
.end method

.method public onDeny(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->b(J)V

    return-void
.end method

.method public onGrant(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PromptActivity;->a(J)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->x:Z

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->x:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->A:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "SuperSU Prompt Wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->w:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->v:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->t:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->u:Z

    :cond_1
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    goto :goto_0
.end method
