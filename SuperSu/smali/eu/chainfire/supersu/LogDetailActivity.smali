.class public Leu/chainfire/supersu/LogDetailActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Leu/chainfire/supersu/Logs;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/LogDetailActivity;)I
    .locals 1

    iget v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return v0
.end method

.method public static a(Landroid/app/Activity;II)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Leu/chainfire/supersu/LogDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.extra.logposition"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Leu/chainfire/supersu/Logs;ILjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    instance-of v1, v0, Leu/chainfire/supersu/LogDetailActivity;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Leu/chainfire/supersu/Application;

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/Application;

    invoke-virtual {v1}, Leu/chainfire/supersu/Application;->c()Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/Application;

    invoke-virtual {v1}, Leu/chainfire/supersu/Application;->g()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/Application;

    invoke-virtual {v1}, Leu/chainfire/supersu/Application;->f()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v1, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/Logs$Log;

    const-string v2, "%s @ %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Leu/chainfire/supersu/Logs$Log;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Leu/chainfire/supersu/Logs$Log;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Leu/chainfire/supersu/Logs$Log;->b:Ljava/lang/String;

    const v2, 0x7f040030

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f04003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v2, 0x7f04003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v3, :cond_1

    if-nez p2, :cond_3

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v7, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v2, 0x7f040031

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f09002a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v3, 0x0

    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    const-string v7, ".DENIED."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v3, 0x0

    :cond_7
    if-nez v3, :cond_9

    iget-object v3, v1, Leu/chainfire/supersu/Logs$Log;->n:Ljava/lang/String;

    iget-object v1, v1, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v1}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f09005e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x11170

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_12

    :cond_a
    const/4 v6, -0x1

    if-eq v3, v6, :cond_11

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string v8, ""

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v8, "INTERACTIVE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0x21

    invoke-virtual {v6, v8, v9, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    const/4 v1, 0x2

    new-array v8, v1, [I

    const/4 v1, 0x2

    new-array v9, v1, [I

    const/4 v1, 0x0

    :cond_c
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v11

    aput v11, v8, v10

    const/4 v10, 0x1

    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v11

    aput v11, v8, v10

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_10

    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_10

    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_10

    const/4 v10, 0x1

    aget v10, v9, v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_10

    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x1

    aget v11, v8, v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    new-array v12, v11, [B

    invoke-virtual {v7, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    if-ne v13, v11, :cond_10

    add-int/2addr v3, v11

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    new-instance v14, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v15, " "

    const-string v16, "\u00a0"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-nez v1, :cond_d

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v12, v11

    const/16 v12, 0xa

    if-eq v11, v12, :cond_d

    const/16 v11, 0xa

    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_d
    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v12, 0x21

    invoke-virtual {v6, v11, v13, v14, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    const/4 v11, 0x3

    if-ne v10, v11, :cond_f

    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v10, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v11, 0x21

    invoke-virtual {v6, v10, v13, v14, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0x4000

    if-lt v3, v10, :cond_c

    :cond_10
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_12
    const/16 v6, 0xa

    if-eq v3, v6, :cond_a

    int-to-char v3, v3

    :try_start_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method static synthetic a(Leu/chainfire/supersu/LogDetailActivity;I)V
    .locals 0

    iput p1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/LogDetailActivity;)Leu/chainfire/supersu/Logs;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    return-object v0
.end method

.method static synthetic c(Leu/chainfire/supersu/LogDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClose(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_logformat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31122359"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    sget-object v0, Leu/chainfire/supersu/Logs;->a:Leu/chainfire/supersu/Logs;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.logposition"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    iget-object v2, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Leu/chainfire/supersu/LogDetailActivity;->a(Landroid/app/Activity;Leu/chainfire/supersu/Logs;ILjava/lang/String;)V

    return-void
.end method

.method public onNext(Landroid/view/View;)V
    .locals 6

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    const v3, 0x7f040031

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    new-instance v1, Leu/chainfire/supersu/LogDetailActivity$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogDetailActivity$2;-><init>(Leu/chainfire/supersu/LogDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onPrev(Landroid/view/View;)V
    .locals 6

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    const v3, 0x7f040031

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    new-instance v1, Leu/chainfire/supersu/LogDetailActivity$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogDetailActivity$1;-><init>(Leu/chainfire/supersu/LogDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "eu.chainfire.supersu.extra.logposition"

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->finish()V

    return-void
.end method
