.class Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    .line 39
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    #calls: Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->access$3(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V

    .line 50
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    #getter for: Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->access$1(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    #calls: Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->access$2(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V

    .line 45
    return-void
.end method
