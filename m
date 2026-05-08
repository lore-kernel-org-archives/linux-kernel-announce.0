Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0879C378D82
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 07:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778223673; cv=none; b=IvVQFiKYi03ecN47cLKy1erJMcMizyNzk+8e95jqxqIYc6xp0sGMWqafN0iBhuHH4jOy1Kbr1kLLCmAGCNxNEjVCil0WxgoiM1W7lJB6DHtHWGOad3E/sFmgnc4n/ZJLGx1cA43fDiCp4o4HWDJo1kMH5eBj95mHkwU7IA2HwzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778223673; c=relaxed/simple;
	bh=V0YFo6lV3IabF5gJt8cLp0ZNpMC7xmVIdvZDKOYrm4s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RTXSURcUhJdCI28lOWnhkWMcbJGTWWq1aiPlInV8n6M1UeYxbCvn1vVRvXC0ehsScOphD8msQ1xrnufu1sO7oCRt5raZ0O2guGFGJfwba3F0zBR/L0am243bRdM9kKFJujmdVzPkv4JHqENoWZRiblJR6ZinsZTDHEjVgBfagsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778223673;
	bh=V0YFo6lV3IabF5gJt8cLp0ZNpMC7xmVIdvZDKOYrm4s=;
	h=Subject:From:To:Date:From;
	b=Jb42embaE3ILXnAfUDPzhnhJpLrf5QPmvTYpCtZ9bx+0NCYjY3IVZ2jWjaj04u/r+
	 Y6mNXCuitP+FPgDg5BbVFiLihpsQfAKHX/u7T5vUf0I72sPnAjIbQ0TB8H2qcM8Z9i
	 NqO//RwknF+omgWtE1dhhrGsHk++/CqWCi4VMC5w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14C67C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 07:01:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0562B3810934
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 07:00:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 07:00:20 +0000
Message-Id: <20260508070020.release-7.0.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.5.xz

Linux kernel version 7.0.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.5/v7.0.4

