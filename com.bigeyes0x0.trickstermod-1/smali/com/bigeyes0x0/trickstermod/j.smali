.class public final Lcom/bigeyes0x0/trickstermod/j;
.super Ljava/lang/Object;
.source "TrPref.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;

.field private e:Lcom/bigeyes0x0/trickstermod/TrApp;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->e:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 56
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->e:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-string v1, "trickstermod"

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    .line 58
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->e:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-string v1, "settings"

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->c:Landroid/content/SharedPreferences;

    .line 61
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    .line 62
    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 109
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply_grace_period"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "script_crc"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 317
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    return-void

    .line 245
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "adb_port"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "adb_screen_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x1

    .line 66
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/j;->e:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->d()Ljava/lang/String;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v4, "android_id"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 67
    if-nez v2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "android_id"

    .line 69
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/j;->e:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->d()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/j;->e:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->h()Ljava/lang/String;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v4, "kernel_version"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 73
    if-nez v2, :cond_2

    .line 74
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "kernel_version"

    .line 75
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/j;->e:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->h()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    if-nez v1, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/j;->A()V

    .line 82
    :cond_1
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    const-string v2, "GOV_CONTROL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "icon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cpu_stats_warp_offsets0"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cpu_stats_warp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    if-nez p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cpu_stats_warp_offsets0"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    return-void

    .line 98
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    const-string v2, "IO_CONTROL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/j;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_current_tab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hostname"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dirty_boot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 281
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    return-void
.end method

.method public d(I)V
    .locals 2
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "set_on_boot_delay"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 322
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 323
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "kernel_backup_location"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    return-void
.end method

.method public d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hostname_set_on_boot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    return-void
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "adb_screen_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "adb_port"

    const-string v2, "5555"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 2
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "locale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    return-void
.end method

.method public e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "set_on_boot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    return-void
.end method

.method public f()I
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "apply_grace_period"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "set_on_boot_notification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 327
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "cpu_stats_warp_offsets0"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 2
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sysctl_set_on_boot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 332
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 333
    return-void
.end method

.method public h(Z)V
    .locals 2
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "temp_unit_in_f"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 337
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    return-void
.end method

.method public h()Z
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "cpu_stats_warp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "dirty_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "hostname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "icon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "kernel_backup_location"

    .line 146
    const-string v2, "kernel_backups"

    .line 145
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 150
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    return-object v2

    .line 152
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public n()I
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_current_tab"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v1, "MAKO_RED"

    .line 165
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/j;->c:Landroid/content/SharedPreferences;

    const-string v3, "MAKO_RED"

    const-string v4, "255"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "MAKO_GREEN"

    .line 167
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/j;->c:Landroid/content/SharedPreferences;

    const-string v3, "MAKO_GREEN"

    const-string v4, "255"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "MAKO_BLUE"

    .line 169
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/j;->c:Landroid/content/SharedPreferences;

    const-string v3, "MAKO_BLUE"

    const-string v4, "255"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method public p()J
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "script_crc"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "set_on_boot_delay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 2

    .prologue
    const v0, 0x7f0a0005

    .line 186
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/j;->r()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    return v0

    .line 190
    :pswitch_1
    const v0, 0x7f0a0004

    goto :goto_0

    .line 192
    :pswitch_2
    const v0, 0x7f0a0006

    goto :goto_0

    .line 194
    :pswitch_3
    const v0, 0x7f0a0007

    goto :goto_0

    .line 196
    :pswitch_4
    const v0, 0x7f0a0008

    goto :goto_0

    .line 198
    :pswitch_5
    const v0, 0x7f0a0009

    goto :goto_0

    .line 200
    :pswitch_6
    const v0, 0x7f0a000a

    goto :goto_0

    .line 202
    :pswitch_7
    const v0, 0x7f0a000b

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public t()I
    .locals 2

    .prologue
    .line 208
    const v0, 0x1030073

    .line 209
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/j;->r()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 217
    :goto_0
    :pswitch_0
    return v0

    .line 214
    :pswitch_1
    const v0, 0x103006f

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "locale"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "hostname_set_on_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "set_on_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "set_on_boot_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "sysctl_set_on_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "temp_unit_in_f"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
