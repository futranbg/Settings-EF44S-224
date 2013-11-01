.class public Lcom/stericson/RootTools/d/a;
.super Ljava/lang/Object;
.source "InternalVariables.java"


# static fields
.field protected static a:Z

.field protected static b:Z

.field protected static c:Z

.field protected static d:Z

.field protected static e:Ljava/lang/String;

.field protected static f:Ljava/util/Set;

.field protected static g:Ljava/util/ArrayList;

.field protected static h:Ljava/lang/String;

.field protected static i:Lcom/stericson/RootTools/a/b;

.field protected static j:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/stericson/RootTools/d/a;->a:Z

    .line 42
    sput-boolean v0, Lcom/stericson/RootTools/d/a;->b:Z

    .line 43
    sput-boolean v0, Lcom/stericson/RootTools/d/a;->c:Z

    .line 44
    sput-boolean v0, Lcom/stericson/RootTools/d/a;->d:Z

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/d/a;->e:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/d/a;->h:Ljava/lang/String;

    .line 63
    const-string v0, "^\\S+\\s+([0-9]+).*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/stericson/RootTools/d/a;->j:Ljava/util/regex/Pattern;

    .line 64
    return-void
.end method
