.class Landroid/support/v4/b/d;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field private final a:Landroid/support/v4/b/c;


# direct methods
.method public constructor <init>(Landroid/support/v4/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/support/v4/b/d;->a:Landroid/support/v4/b/c;

    .line 33
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/v4/b/d;->a:Landroid/support/v4/b/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v4/b/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/b/d;->a:Landroid/support/v4/b/c;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/b/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v4/b/d;->a:Landroid/support/v4/b/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/c;->a(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
