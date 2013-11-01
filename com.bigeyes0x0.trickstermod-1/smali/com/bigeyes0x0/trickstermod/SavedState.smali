.class public final Lcom/bigeyes0x0/trickstermod/SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/bigeyes0x0/trickstermod/f;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/f;-><init>()V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/SavedState;->a:Landroid/os/Bundle;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 39
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/SavedState;->a:Landroid/os/Bundle;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/SavedState;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method
