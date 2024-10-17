Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA1C1DD864
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729172447; cv=none; b=UnisOm1sGCkxqnluk2VxMmYy+Dr4CldaTWTAZ8CrUr6lzV5qXyJA7oOB+SjtI6Ff6/w94z2tlHEciDn3AoQs2pCTIlp9hKiUpHu/aHmXV3yQARQTuGl9vuDzj8bi1HIMgWT7QUhWAtQMtNzIR3tr3M/LtFi5iQU4mr2daqrJOjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729172447; c=relaxed/simple;
	bh=01T2WGnYJgpXhS08ANw7Mnt2qktxLdSLp4tepHhcao0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eeeOvSa9Sw+tSCnSXg7A0KeE8cv67ckFdzptZ3LwJDbfclUeizFvzL0cwHbfEf3PflxecdlvLlsADbHCu5kl3PbmtguF2y/nEC4SH6mKUU2eUE6FyurZoslKlwhLYOqMhDWqSG1h1dho8S9qBQBpr2/eR7EPj5dKeuJW0Gu+oTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729172447;
	bh=01T2WGnYJgpXhS08ANw7Mnt2qktxLdSLp4tepHhcao0=;
	h=Subject:From:To:Date:From;
	b=eJz2lt3I7gfOqlWw7g6Tewbv84z3kcFBZg1quHHct9eHYKtEf2NM4DTEZaOVdKJKz
	 GK3DgwxRO+t5/rig8yA0bLC1+7JAWUIt6MQnBkbVzB8sn5M/kH+LHl8EJ9ZuAP7TZw
	 lrZoPaQLJzCUIbXYqg+9Nw6mhObxIWtshdc973g8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 014C2C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:40:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 788793809A8A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:40:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.113 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Oct 2024 13:40:50 +0000
Message-Id: <20241017134050.release-6.1.113@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.113
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.113.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.113.xz

Linux kernel version 6.1.113 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.113.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.113.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.113.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.113/v6.1.112

