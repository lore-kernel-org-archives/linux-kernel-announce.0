Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F83929E116
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759407346; cv=none; b=Qe5Z9ZQZxz6cyFtGADVsnKpax/o5QOE9TC3wUg6BOpRZdeU0Vts3/VtiC1OhOUJY8gufMjOx9tNUExiaMJ6RQYlnVvhaNsiRK/dEOcih+I32amtGiNRQmqN0eAAhZ+Z1S4rZBSAidDJcDhnIQAe+LxlnbwyRutVMvIkyjSM1/vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759407346; c=relaxed/simple;
	bh=kvE+Qk4UPg+CgRIW6Z5IHgXEsiU6KJ6Oa2RG0LxJLxw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=j+4pMh8XkWfnrDPQsJzzAFeY7XBZO/nZKjwUkC0qd3d2G7sgklAYYf3p7rd1TxRDQ7rcGX63TuMLaXbCEnJYi5zWFO3JrI+/vt0Et+t+b+8RrLkmrAD8k8SL51rYB5L+X3ZMUSZ276MEy0Tyr6zgJu4INTq1XH4IGPTLxSDkeRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759407346;
	bh=kvE+Qk4UPg+CgRIW6Z5IHgXEsiU6KJ6Oa2RG0LxJLxw=;
	h=Subject:From:To:Date:From;
	b=JfBAwzhHql7B6bBSeg3LdKwikvHKwThPvBBWZb++VjavC3azdxFxg6Y5vo/EVt22Q
	 7smQob7Ly7XNQj8l96RlQg5GdrfipQDAKSaIAF9Y4EdnzQCmoV2j6U940HpykzKgfp
	 UdmlfEmAx6m5IwwF0jzhqfGHigZT4kNkXGdCqAEU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8911C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:15:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE6A839D0C1B
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:15:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Oct 2025 12:15:37 +0000
Message-Id: <20251002121537.release-6.16.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.10.xz

Linux kernel version 6.16.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.10/v6.16.9

