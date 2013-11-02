.class public Lde/robv/android/xposed/installer/repo/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# instance fields
.field public final modules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/installer/repo/Module;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/robv/android/xposed/installer/repo/Repository;->modules:Ljava/util/Map;

    .line 10
    return-void
.end method
