.class Lcom/bigeyes0x0/trickstermod/f;
.super Ljava/lang/Object;
.source "SavedState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/bigeyes0x0/trickstermod/SavedState;
    .locals 1
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v0, p1}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/bigeyes0x0/trickstermod/SavedState;
    .locals 1
    .parameter

    .prologue
    .line 28
    new-array v0, p1, [Lcom/bigeyes0x0/trickstermod/SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/f;->a(Landroid/os/Parcel;)Lcom/bigeyes0x0/trickstermod/SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/f;->a(I)[Lcom/bigeyes0x0/trickstermod/SavedState;

    move-result-object v0

    return-object v0
.end method
