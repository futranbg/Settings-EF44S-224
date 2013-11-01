.class public final Lcom/bigeyes0x0/trickstermod/h;
.super Ljava/lang/Object;
.source "TrConn.java"


# static fields
.field static a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field static b:Lcom/bigeyes0x0/trickstermod/j;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Ljava/util/Properties;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 83
    const-string v2, "GOV_CONTROL_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GPU_GOV_CTRL_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IO_CONTROL_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HP_CONTROL_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 84
    const-string v2, "BF_CONTROL_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "THERMAL_CTRL_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TOUCH_CTRL_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LED_CONTROL_"

    aput-object v2, v0, v1

    .line 82
    sput-object v0, Lcom/bigeyes0x0/trickstermod/h;->c:[Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 87
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/h;->b:Lcom/bigeyes0x0/trickstermod/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "set"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-class v3, Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    sget-object v3, Lcom/bigeyes0x0/trickstermod/b;->d:Lcom/bigeyes0x0/trickstermod/b;

    if-ne v2, v3, :cond_0

    .line 238
    sget-object v2, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 243
    :goto_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Trickster apply "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attributes."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    return-object v0

    .line 240
    :cond_0
    sget-object v2, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 243
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/h;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mksh"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "./mksh "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->k()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/h;->e:Ljava/lang/String;

    .line 116
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========= Exec =========\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/h;->e:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 117
    invoke-static {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======== Result ========\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 120
    return-object v0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/sh "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->k()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/h;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/h;->c()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "define "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/h;->c()Ljava/util/Properties;

    move-result-object v2

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 137
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/h;->c()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find gui of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 142
    goto :goto_0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_LAB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-nez v0, :cond_0

    .line 149
    sget-object v2, Lcom/bigeyes0x0/trickstermod/h;->c:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 156
    :cond_0
    :goto_1
    return-object v0

    .line 149
    :cond_1
    aget-object v4, v2, v1

    .line 150
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    const-string v0, ""

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 149
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 192
    const-string v0, ""

    .line 193
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "get"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_0
    return-object v0

    .line 195
    :cond_1
    aget-object v3, p1, v0

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/h;->d:Ljava/util/Properties;

    .line 94
    sget-object v0, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(I)V

    .line 95
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    const-string v0, "TABS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 174
    .line 176
    :try_start_0
    const-class v1, Lcom/bigeyes0x0/trickstermod/e;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 177
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 178
    :cond_0
    sget-object v2, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 180
    :cond_1
    sget-object v2, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2, v1, p2}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_TIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Properties;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/h;->d:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/h;->d:Ljava/util/Properties;

    .line 163
    const-string v0, "define all"

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/h;->d:Ljava/util/Properties;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 166
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/h;->d:Ljava/util/Properties;

    const-string v1, "TABS"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fail to read device config"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/h;->d:Ljava/util/Properties;

    return-object v0
.end method

.method public d()V
    .locals 9

    .prologue
    .line 206
    sget-object v0, Lcom/bigeyes0x0/trickstermod/h;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->f()I

    move-result v1

    .line 207
    if-nez v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/h;->b:Lcom/bigeyes0x0/trickstermod/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/j;->c(Z)V

    .line 211
    sget-object v0, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 212
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    check-cast v0, Landroid/app/AlarmManager;

    .line 213
    sget-object v2, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const/4 v3, 0x0

    .line 214
    new-instance v4, Landroid/content/Intent;

    const-string v5, "clear_dirty_flag"

    const/4 v6, 0x0

    sget-object v7, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 215
    const-class v8, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    .line 214
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const/high16 v5, 0x1000

    .line 213
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 217
    const/4 v3, 0x2

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const v6, 0xea60

    mul-int/2addr v1, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 217
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/bigeyes0x0/trickstermod/h;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->o()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/h;->a(Landroid/os/Bundle;)Ljava/lang/String;

    .line 223
    return-void
.end method
