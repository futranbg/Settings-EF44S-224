.class public Leu/chainfire/supersu/Settings$Default;
.super Ljava/lang/Object;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field final synthetic r:Leu/chainfire/supersu/Settings;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/Settings;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Leu/chainfire/supersu/Settings$Default;->k:I

    iput v1, p0, Leu/chainfire/supersu/Settings$Default;->l:I

    const/16 v0, 0xa

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->m:I

    const/4 v0, 0x2

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->n:I

    iput-boolean v1, p0, Leu/chainfire/supersu/Settings$Default;->o:Z

    iput-boolean v2, p0, Leu/chainfire/supersu/Settings$Default;->p:Z

    iput-boolean v2, p0, Leu/chainfire/supersu/Settings$Default;->q:Z

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_access"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Leu/chainfire/supersu/Settings$Default;->n:I

    invoke-static {v4}, Leu/chainfire/supersu/Constants;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->n:I

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_notify"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->k:I

    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_log"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Leu/chainfire/supersu/Settings$Default;->l:I

    invoke-static {v4}, Leu/chainfire/supersu/Constants;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->l:I

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_wait"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Leu/chainfire/supersu/Settings$Default;->m:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->m:I

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Leu/chainfire/supersu/Settings$Default;->m:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-static {}, Leu/chainfire/supersu/Settings;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->m:I

    :cond_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_respectcm"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings$Default;->o:Z

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_trustsystem"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings$Default;->p:Z

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_enablemultiuser"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings$Default;->q:Z

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_notify"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Leu/chainfire/supersu/Settings$Default;->k:I

    invoke-static {v4}, Leu/chainfire/supersu/Constants;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->k:I

    goto/16 :goto_1
.end method

.method protected a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "config_%s_access"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Leu/chainfire/supersu/Settings$Default;->n:I

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "config_%s_notify"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Leu/chainfire/supersu/Settings$Default;->k:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    const-string v0, "config_%s_log"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Leu/chainfire/supersu/Settings$Default;->l:I

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "config_%s_wait"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Leu/chainfire/supersu/Settings$Default;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "config_%s_respectcm"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Leu/chainfire/supersu/Settings$Default;->o:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "config_%s_trustsystem"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Leu/chainfire/supersu/Settings$Default;->p:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "config_%s_enablemultiuser"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Leu/chainfire/supersu/Settings$Default;->q:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "config_%s_notify"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Leu/chainfire/supersu/Settings$Default;->k:I

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public d()V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/Settings$Default;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->r:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {p0, v1, v0}, Leu/chainfire/supersu/Settings$Default;->a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
