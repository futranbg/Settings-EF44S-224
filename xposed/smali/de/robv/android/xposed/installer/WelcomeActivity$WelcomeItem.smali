.class Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WelcomeItem"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field final synthetic this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

.field public final title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lde/robv/android/xposed/installer/WelcomeActivity;II)V
    .locals 1
    .parameter
    .parameter "titleResId"
    .parameter "descriptionResId"

    .prologue
    .line 89
    iput-object p1, p0, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;->this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1, p2}, Lde/robv/android/xposed/installer/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;->title:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, p3}, Lde/robv/android/xposed/installer/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;->description:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;->title:Ljava/lang/String;

    return-object v0
.end method
