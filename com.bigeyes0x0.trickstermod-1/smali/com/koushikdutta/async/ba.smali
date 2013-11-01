.class Lcom/koushikdutta/async/ba;
.super Ljava/lang/Object;
.source "PushParser.java"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/koushikdutta/async/az;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/koushikdutta/async/az;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/ba;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/koushikdutta/async/az;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget-object v0, v0, Lcom/koushikdutta/async/az;->c:Lcom/koushikdutta/async/ak;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/ba;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 129
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 134
    if-eqz p2, :cond_0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget-object v1, v1, Lcom/koushikdutta/async/az;->d:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ah;

    .line 136
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->a(Lcom/koushikdutta/async/az;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->a(Lcom/koushikdutta/async/az;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    if-nez v1, :cond_2

    .line 236
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v2}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v2, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v2}, Lcom/koushikdutta/async/az;->c(Lcom/koushikdutta/async/az;)Lcom/koushikdutta/async/bf;

    move-result-object v2

    .line 239
    iget-object v3, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/koushikdutta/async/az;->a(Lcom/koushikdutta/async/az;Lcom/koushikdutta/async/bf;)Lcom/koushikdutta/async/bf;

    .line 240
    invoke-static {v2}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/bf;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 241
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    :goto_1
    return-void

    .line 141
    :cond_2
    :try_start_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    .line 142
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v2, v1, Lcom/koushikdutta/async/az;->a:I

    add-int/lit8 v2, v2, -0x4

    iput v2, v1, Lcom/koushikdutta/async/az;->a:I

    .line 225
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->a(Lcom/koushikdutta/async/az;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    sget-boolean v1, Lcom/koushikdutta/async/ba;->a:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v1, v1, Lcom/koushikdutta/async/az;->a:I

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 145
    :cond_4
    :try_start_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    .line 146
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v2, v1, Lcom/koushikdutta/async/az;->a:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Lcom/koushikdutta/async/az;->a:I

    goto :goto_2

    .line 149
    :cond_5
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    .line 150
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->h()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v2, v1, Lcom/koushikdutta/async/az;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/koushikdutta/async/az;->a:I

    goto :goto_2

    .line 153
    :cond_6
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    .line 154
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v2, v1, Lcom/koushikdutta/async/az;->a:I

    add-int/lit8 v2, v2, -0x8

    iput v2, v1, Lcom/koushikdutta/async/az;->a:I

    goto :goto_2

    .line 157
    :cond_7
    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_8

    .line 158
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 160
    :cond_8
    instance-of v2, v1, Lcom/koushikdutta/async/bd;

    if-eqz v2, :cond_f

    .line 161
    check-cast v1, Lcom/koushikdutta/async/bd;

    .line 163
    new-instance v7, Lcom/koushikdutta/async/ah;

    invoke-direct {v7}, Lcom/koushikdutta/async/ah;-><init>()V

    move v2, v5

    .line 164
    :goto_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->n()I

    move-result v3

    if-lez v3, :cond_b

    .line 165
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->m()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 166
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    move v3, v6

    .line 168
    :goto_4
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lez v9, :cond_a

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget-byte v9, v1, Lcom/koushikdutta/async/bd;->a:B

    if-eq v2, v9, :cond_9

    move v2, v5

    :goto_5
    if-eqz v2, :cond_a

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v2, v6

    .line 168
    goto :goto_5

    .line 171
    :cond_a
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 172
    if-nez v2, :cond_d

    .line 173
    invoke-virtual {p2, v8}, Lcom/koushikdutta/async/ah;->b(Ljava/nio/ByteBuffer;)V

    .line 174
    invoke-virtual {p2, v7, v3}, Lcom/koushikdutta/async/ah;->a(Lcom/koushikdutta/async/ah;I)V

    .line 176
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->h()B

    .line 184
    :cond_b
    iget-object v3, v1, Lcom/koushikdutta/async/bd;->b:Lcom/koushikdutta/async/a/d;

    if-eqz v3, :cond_c

    .line 185
    iget-object v1, v1, Lcom/koushikdutta/async/bd;->b:Lcom/koushikdutta/async/a/d;

    invoke-interface {v1, p1, v7}, Lcom/koushikdutta/async/a/d;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 187
    :cond_c
    if-nez v2, :cond_e

    .line 188
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v2, v1, Lcom/koushikdutta/async/az;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/koushikdutta/async/az;->a:I

    goto/16 :goto_2

    .line 180
    :cond_d
    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    .line 191
    :cond_e
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    .line 194
    :cond_f
    instance-of v2, v1, Lcom/koushikdutta/async/bb;

    if-nez v2, :cond_10

    instance-of v2, v1, Lcom/koushikdutta/async/bc;

    if-eqz v2, :cond_14

    .line 195
    :cond_10
    move-object v0, v1

    check-cast v0, Lcom/koushikdutta/async/bb;

    move-object v2, v0

    .line 196
    iget v3, v2, Lcom/koushikdutta/async/bb;->a:I

    .line 197
    const/4 v7, -0x1

    if-ne v3, v7, :cond_11

    .line 198
    iget-object v3, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v3}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v7, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v7}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 199
    iget-object v7, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v7}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v8}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    iput v3, v2, Lcom/koushikdutta/async/bb;->a:I

    .line 201
    iget-object v2, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v7, v2, Lcom/koushikdutta/async/az;->a:I

    add-int/2addr v7, v3

    iput v7, v2, Lcom/koushikdutta/async/az;->a:I

    .line 203
    :cond_11
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v2

    if-ge v2, v3, :cond_12

    .line 205
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    .line 211
    :cond_12
    if-lez v3, :cond_17

    .line 212
    new-array v2, v3, [B

    .line 213
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/ah;->a([B)V

    .line 215
    :goto_6
    iget-object v7, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v8, v7, Lcom/koushikdutta/async/az;->a:I

    sub-int v3, v8, v3

    iput v3, v7, Lcom/koushikdutta/async/az;->a:I

    .line 216
    instance-of v1, v1, Lcom/koushikdutta/async/bc;

    if-eqz v1, :cond_13

    .line 217
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 219
    :cond_13
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    invoke-static {v1}, Lcom/koushikdutta/async/az;->b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 222
    :cond_14
    sget-boolean v1, Lcom/koushikdutta/async/ba;->a:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    :cond_15
    iget-object v1, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget-object v1, v1, Lcom/koushikdutta/async/az;->b:Lcom/koushikdutta/async/am;

    iget-object v2, p0, Lcom/koushikdutta/async/ba;->b:Lcom/koushikdutta/async/az;

    iget v2, v2, Lcom/koushikdutta/async/az;->a:I

    invoke-virtual {v1, v2, p0}, Lcom/koushikdutta/async/am;->a(ILcom/koushikdutta/async/a/d;)V

    goto/16 :goto_1

    .line 243
    :catch_1
    move-exception v1

    .line 244
    sget-boolean v2, Lcom/koushikdutta/async/ba;->a:Z

    if-nez v2, :cond_16

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 245
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_17
    move-object v2, v4

    goto :goto_6
.end method
