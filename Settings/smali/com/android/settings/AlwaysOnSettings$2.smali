.class Lcom/android/settings/AlwaysOnSettings$2;
.super Ljava/lang/Object;
.source "AlwaysOnSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AlwaysOnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AlwaysOnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AlwaysOnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/AlwaysOnSettings$2;->this$0:Lcom/android/settings/AlwaysOnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 65
    .end local p2
    :goto_0
    return-void

    .line 64
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings$2;->this$0:Lcom/android/settings/AlwaysOnSettings;

    check-cast p2, Landroid/widget/CheckedTextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    #calls: Lcom/android/settings/AlwaysOnSettings;->setAlwaysOnValuePopup(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AlwaysOnSettings;->access$100(Lcom/android/settings/AlwaysOnSettings;Z)V

    goto :goto_0
.end method
