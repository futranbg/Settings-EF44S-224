.class Leu/chainfire/supersu/Settings$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/Settings;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Settings;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/Settings$2;->a:Leu/chainfire/supersu/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leu/chainfire/supersu/Settings$App;Leu/chainfire/supersu/Settings$App;)I
    .locals 2

    iget-object v0, p1, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iget-object v1, p2, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Leu/chainfire/supersu/Settings$App;

    check-cast p2, Leu/chainfire/supersu/Settings$App;

    invoke-virtual {p0, p1, p2}, Leu/chainfire/supersu/Settings$2;->a(Leu/chainfire/supersu/Settings$App;Leu/chainfire/supersu/Settings$App;)I

    move-result v0

    return v0
.end method
