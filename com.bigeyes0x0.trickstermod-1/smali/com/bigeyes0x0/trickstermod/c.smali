.class public final enum Lcom/bigeyes0x0/trickstermod/c;
.super Ljava/lang/Enum;
.source "Icon.java"


# static fields
.field public static final enum a:Lcom/bigeyes0x0/trickstermod/c;

.field public static final enum b:Lcom/bigeyes0x0/trickstermod/c;

.field private static final synthetic g:[Lcom/bigeyes0x0/trickstermod/c;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private f:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/bigeyes0x0/trickstermod/c;

    const-string v1, "NATE"

    const-string v3, "Nate Gantt"

    const v4, 0x7f080001

    const v5, 0x7f020007

    invoke-direct/range {v0 .. v5}, Lcom/bigeyes0x0/trickstermod/c;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/c;->a:Lcom/bigeyes0x0/trickstermod/c;

    .line 11
    new-instance v3, Lcom/bigeyes0x0/trickstermod/c;

    const-string v4, "BACON"

    .line 12
    const-string v6, "grilledbacon@xda"

    const v7, 0x7f080002

    .line 13
    const v8, 0x7f020006

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/bigeyes0x0/trickstermod/c;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 12
    sput-object v3, Lcom/bigeyes0x0/trickstermod/c;->b:Lcom/bigeyes0x0/trickstermod/c;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bigeyes0x0/trickstermod/c;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/c;->a:Lcom/bigeyes0x0/trickstermod/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bigeyes0x0/trickstermod/c;->b:Lcom/bigeyes0x0/trickstermod/c;

    aput-object v1, v0, v9

    sput-object v0, Lcom/bigeyes0x0/trickstermod/c;->g:[Lcom/bigeyes0x0/trickstermod/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/c;->f:Landroid/util/SparseArray;

    .line 21
    iput-object p3, p0, Lcom/bigeyes0x0/trickstermod/c;->c:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/bigeyes0x0/trickstermod/c;->d:I

    .line 23
    iput p5, p0, Lcom/bigeyes0x0/trickstermod/c;->e:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/c;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/bigeyes0x0/trickstermod/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/c;

    return-object v0
.end method

.method public static values()[Lcom/bigeyes0x0/trickstermod/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/bigeyes0x0/trickstermod/c;->g:[Lcom/bigeyes0x0/trickstermod/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/bigeyes0x0/trickstermod/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/c;->d:I

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/c;->e:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/c;->f:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/c;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/c;->f:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/c;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 55
    :goto_0
    return-object v0

    .line 43
    :cond_0
    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 44
    new-array v0, v4, [I

    const v2, 0x101004d

    aput v2, v0, v3

    .line 45
    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    iget v3, p0, Lcom/bigeyes0x0/trickstermod/c;->e:I

    .line 49
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 50
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 51
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    invoke-static {v3, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 51
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/c;->f:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/c;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
