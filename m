Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E33317BB3
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711518048; cv=none; b=S/tSKGMgcuBL5gUuXRgf+y9b7NIY6AUU14onRyOSyoLAmqFRy8tni8EZXinuV9BSLjc7G43TGhwygK08FAs9k31/53H++e6cA0b1zSsgwkN5sOedPuW8GhsNzyDwszE7icLOyEPfTqFApIncGStLGorjJKxQBXlAZ9YEHOaJcZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711518048; c=relaxed/simple;
	bh=mdgt/ee3H+PzE6tMGXBDGvxyFPIj1MSNgOrJ3q4YzNg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rw8kHBAwuuBjZ0Hqj/2HdB/yPoMCJeEWN4SFQ/08Bcg4wv48CNyUQ8Op/uDI/JDLePJ+FC7wHW7y6/f8yN+i4z55HovKWRoEjGKWZxAvuDUd1pxLU0rYsHpAdyqZRrQRf6zr4uSqB5ELBqSgu8+DtZNCpLBudEjK0UfpTyOkMQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711518048;
	bh=mdgt/ee3H+PzE6tMGXBDGvxyFPIj1MSNgOrJ3q4YzNg=;
	h=Subject:From:To:Date:From;
	b=xGI9RONWFgn1whZrMtwWBRbEQ6QCUSxAjP+iwQTVYcjRl70NR2JelhdDBZq63rw5f
	 0mdxnT7O/H0Ko6RdwpoeZGncSz8p9AsauH7grwCqjLorjVkqp86K0t8qdCAXY1Lfev
	 RsHwQULl+pWRB7iMeTFChHPff08IfiZKSTGa6xpQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA79CC433F1
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:40:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A1378D2D0EC
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:40:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.23 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 27 Mar 2024 05:40:47 +0000
Message-Id: <20240327054047.release-6.6.23@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.23
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.23.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.23.xz

Linux kernel version 6.6.23 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.23.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.23.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.23.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.23/v6.6.22

