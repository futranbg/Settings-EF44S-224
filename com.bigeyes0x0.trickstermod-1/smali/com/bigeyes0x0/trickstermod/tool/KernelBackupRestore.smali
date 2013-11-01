.class public Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;
.super Lcom/bigeyes0x0/trickstermod/tool/j;
.source "KernelBackupRestore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final d:Ljava/lang/Integer;

.field private static final e:Lcom/bigeyes0x0/trickstermod/tool/e;

.field private static final f:Lcom/bigeyes0x0/trickstermod/tool/f;

.field private static final g:Ljava/io/File;

.field private static final h:Ljava/io/File;


# instance fields
.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/app/AlertDialog;

.field private m:Landroid/app/AlertDialog;

.field private n:Landroid/app/AlertDialog;

.field private o:Landroid/app/AlertDialog;

.field private p:Lcom/bigeyes0x0/trickstermod/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->d:Ljava/lang/Integer;

    .line 92
    new-instance v0, Lcom/bigeyes0x0/trickstermod/tool/e;

    const-string v1, "tar.gz"

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->e:Lcom/bigeyes0x0/trickstermod/tool/e;

    .line 93
    new-instance v0, Lcom/bigeyes0x0/trickstermod/tool/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/f;-><init>(Lcom/bigeyes0x0/trickstermod/tool/f;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->f:Lcom/bigeyes0x0/trickstermod/tool/f;

    .line 95
    new-instance v0, Ljava/io/File;

    const-string v1, "/kernel-files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->g:Ljava/io/File;

    .line 96
    new-instance v0, Ljava/io/File;

    .line 97
    const-string v1, "/system/kernel-files"

    .line 96
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->h:Ljava/io/File;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a()V

    .line 121
    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const v0, 0x7f08007d

    .line 163
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const v0, 0x7f08007f

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 135
    const v0, 0x7f08008b

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const v0, 0x7f08008a

    goto :goto_0

    .line 142
    :cond_2
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->g:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->h:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_1
    sget-object v1, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 154
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 155
    sget-object v3, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->d:Ljava/lang/Integer;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "./dd if="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|./gzip > \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "./find /system |./grep"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "|./xargs ./tar cvf -|./gzip > \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".tar.gz\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 154
    invoke-static {v2, v3, v4}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Backup\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    if-eqz v0, :cond_5

    const-string v1, "records"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    const v0, 0x7f080081

    goto/16 :goto_0

    .line 151
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " -e "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 163
    :cond_5
    const v0, 0x7f08004e

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 490
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    .line 491
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/a/b;->a(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    sget-object v3, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->f:Lcom/bigeyes0x0/trickstermod/tool/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/b;->a([Landroid/text/InputFilter;)V

    .line 493
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/a/b;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 494
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f080020

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/b;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 495
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/b;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/b;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 497
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 498
    return-object v0
.end method

.method private a([Ljava/lang/String;I)Landroid/app/AlertDialog;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 502
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    const v3, 0x7f08007a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 504
    const v3, 0x7f080020

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    const v3, 0x7f080077

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    const v3, 0x7f08001f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v0, p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    .line 509
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 510
    const/4 v0, -0x3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-ltz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 511
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 512
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 513
    return-object v3

    :cond_0
    move v0, v2

    .line 509
    goto :goto_0

    :cond_1
    move v1, v2

    .line 510
    goto :goto_1
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 189
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_1
    return-object v0

    .line 190
    :cond_0
    const-string v2, " -e "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v0, ""

    goto :goto_1
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    aget-object v3, p1, v0

    .line 180
    const-string v4, " -e "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string v1, "operation_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string v1, "backup_kernel_dir"

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getKernelBackupDir()Ljava/io/File;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "backup_kernel_file"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-array v1, v3, [Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->c([Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->setBusyState(Z)V

    .line 175
    return-void
.end method

.method private b(Ljava/io/File;)I
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    sget-object v0, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 403
    const/4 v1, 0x0

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tar.gz\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {p1}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "./gunzip -c \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"|./dd of="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 408
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    const-string v3, "/system"

    const-string v4, "rw"

    invoke-static {v3, v4}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 414
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Z)Z

    .line 417
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 418
    sget-object v3, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->d:Ljava/lang/Integer;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 419
    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "test -f \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    const-string v6, "\" && ./gunzip -c \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 423
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    const-string v5, "\"|./tar xvf - -C / || echo \"No module file found\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    .line 425
    const-string v2, "sync"

    aput-object v2, v4, v0

    .line 416
    invoke-static {v1, v3, v4}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Restore\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    const-string v1, "/system"

    const-string v2, "ro"

    invoke-static {v1, v2}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 431
    :goto_1
    if-eqz v0, :cond_1

    const-string v1, "records"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    const v0, 0x7f080082

    .line 437
    :goto_2
    return v0

    .line 410
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "./dd if=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" of="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 434
    :cond_1
    const v0, 0x7f08004e

    goto :goto_2

    .line 437
    :cond_2
    const v0, 0x7f080085

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->k:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "Error startActivity: "

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 475
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 476
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 477
    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 478
    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 479
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 480
    const v2, 0x7f080087

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v4}, Lcom/bigeyes0x0/trickstermod/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 479
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 481
    const v1, 0x7f080020

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    const v1, 0x7f080050

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 485
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 486
    return-object v0
.end method

.method private getKernelBackupDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/a;->m:Ljava/lang/String;

    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/j;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs a([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 212
    const v1, 0x7f030015

    .line 211
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 213
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->i:Landroid/widget/Button;

    .line 214
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->j:Landroid/widget/Button;

    .line 215
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->k:Landroid/widget/Button;

    .line 217
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->setOrientation(I)V

    .line 222
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->setPadding(IIII)V

    .line 223
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    return-void
.end method

.method public varargs b([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f060002

    const/4 v5, 0x1

    .line 448
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 449
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 450
    new-instance v2, Ljava/io/File;

    const-string v3, "backup_kernel_dir"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    new-instance v3, Ljava/io/File;

    .line 452
    const-string v4, "backup_kernel_file"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 454
    const-string v4, "operation_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 456
    const v4, 0x7f080088

    .line 455
    invoke-virtual {v0, v6, v5, v4}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZI)V

    .line 457
    invoke-direct {p0, v2, v3}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    .line 463
    :goto_0
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    return-object v1

    .line 459
    :cond_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 460
    const v2, 0x7f080089

    .line 459
    invoke-virtual {v0, v6, v5, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZI)V

    .line 461
    invoke-direct {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->b(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v5, 0x7f08007d

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 235
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->l:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0, v5, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/bigeyes0x0/trickstermod/a;->m:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/j;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0, v5, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0

    .line 251
    :cond_3
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/j;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->m:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_6

    .line 255
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 257
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 258
    const v2, 0x7f080080

    .line 257
    invoke-virtual {v0, v2, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0

    .line 261
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_6
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->o:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_9

    .line 264
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 277
    :pswitch_1
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->b()V

    goto :goto_0

    .line 266
    :pswitch_2
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getKernelBackupDir()Ljava/io/File;

    move-result-object v0

    .line 267
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->e:Lcom/bigeyes0x0/trickstermod/tool/e;

    .line 266
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_7

    array-length v1, v0

    if-nez v1, :cond_8

    .line 269
    :cond_7
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0

    .line 272
    :cond_8
    invoke-direct {p0, v0, v4}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a([Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    goto :goto_0

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 282
    if-ltz p2, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    const/4 v3, -0x3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 284
    if-ltz p2, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    .line 287
    if-eq v3, v4, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    .line 289
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 294
    :pswitch_4
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getKernelBackupDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getKernelBackupDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    const-string v0, ".tar.gz"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 299
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 303
    :goto_3
    sget-object v3, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    if-eqz v1, :cond_e

    const v0, 0x7f080083

    :goto_4
    invoke-virtual {v3, v0, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 282
    goto :goto_1

    :cond_b
    move v0, v2

    .line 284
    goto :goto_2

    .line 291
    :pswitch_5
    invoke-direct {p0, v2, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    .line 299
    goto :goto_3

    .line 301
    :cond_d
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_3

    .line 304
    :cond_e
    const v0, 0x7f080084

    goto :goto_4

    .line 264
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 289
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 314
    const v0, 0x7f08007c

    .line 315
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->l()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(ILjava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->l:Landroid/app/AlertDialog;

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 317
    const v0, 0x7f08007b

    .line 318
    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-direct {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(ILjava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->m:Landroid/app/AlertDialog;

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 320
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->getKernelBackupDir()Ljava/io/File;

    move-result-object v0

    .line 322
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->e:Lcom/bigeyes0x0/trickstermod/tool/e;

    .line 321
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_4

    .line 324
    :cond_3
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f08007e

    .line 325
    const/4 v2, 0x0

    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0

    .line 327
    :cond_4
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->d()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->o:Landroid/app/AlertDialog;

    goto :goto_0

    .line 330
    :cond_5
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->b()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 337
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 338
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 340
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 342
    const-string v1, "busy_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->setBusyState(Z)V

    .line 345
    :cond_0
    const-string v1, "dialog_location_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    const v1, 0x7f08007c

    .line 347
    const-string v2, "dialog_location_value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-direct {p0, v1, v2}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(ILjava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->l:Landroid/app/AlertDialog;

    .line 349
    :cond_1
    const-string v1, "dialog_backup_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const v1, 0x7f08007b

    .line 351
    const-string v2, "dialog_backup_value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-direct {p0, v1, v2}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a(ILjava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->m:Landroid/app/AlertDialog;

    .line 353
    :cond_2
    const-string v1, "dialog_restore_warning_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->d()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->o:Landroid/app/AlertDialog;

    .line 356
    :cond_3
    const-string v1, "dialog_restore_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    const-string v1, "dialog_restore_values"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 359
    const-string v2, "dialog_restore_value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 357
    invoke-direct {p0, v1, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a([Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    .line 361
    :cond_4
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 365
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 366
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 368
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const-string v0, "busy_state"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->l:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    const-string v0, "dialog_location_status"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    const-string v0, "dialog_location_value"

    .line 374
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->m:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    const-string v0, "dialog_backup_status"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    const-string v0, "dialog_backup_value"

    .line 379
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->p:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    const-string v0, "dialog_restore_warning_state"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    const-string v0, "dialog_restore_status"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    const-string v0, "dialog_restore_value"

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    .line 386
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    const-string v3, "dialog_restore_values"

    .line 389
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->n:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 388
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 391
    :cond_4
    new-instance v0, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setBusyState(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 442
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->j:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->k:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    return-void

    :cond_0
    move v0, v2

    .line 442
    goto :goto_0

    :cond_1
    move v1, v2

    .line 443
    goto :goto_1
.end method

.method public setPostExecute(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->setBusyState(Z)V

    .line 470
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(I)V

    .line 471
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/KernelBackupRestore;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 472
    return-void
.end method
