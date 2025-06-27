Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518DC218E8B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751020512; cv=none; b=ACs9dSqQlBEnUVChp2oU2bLbp8EQ1a+VIJOrMg+oVB8r9aCzNBRvW+spId1vNAIoiGCPNac763OWpDJEojluavDbfofy/26VpWhMXk1njw3YQtRE7WatL9ulgYWanWm6MoviA6AJ4kyFWtr5gg/MVtQHBvlr4lfoV46sDrZYm8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751020512; c=relaxed/simple;
	bh=3ouFV+eHwIf5R/JJI8ql4mBwSzxwLRdmTHTlzslStF8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Q3UUcFvfp3FCohhv5K0hVCjLvZq38Z9ZIcdVAaSqUXWVHl1GWlwMfExUM9mmzSbIQPbfEor/rJKYnETtvWhoOOq319rQ4pzSCTfV+Lhk3umLNLL/PrMiXST8+MgUVBomoesHyKDgh74eXT8cpEJzL+yHBNsE2EWc/aPRMG6QLjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751020512;
	bh=3ouFV+eHwIf5R/JJI8ql4mBwSzxwLRdmTHTlzslStF8=;
	h=Subject:From:To:Date:From;
	b=q9iiZtQiWjPxsTHsTnbomY+0CZRTmJg/C2M2n0Pj3ZqPzk0vzGPwylQoU1gDAk0Cy
	 LSgEAf5dpoToAGG2LlpG4vZdiEccCq4OfVRY1x+vMaFssNEUoxzxTItGHvsDmgZMdr
	 gHbZOzy25Mp+WyjzICsGBxZ9GuQqL72pVjvSqM0Y=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0310FC4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:35:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37B51380DBEE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:35:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.142 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Jun 2025 10:35:37 +0000
Message-Id: <20250627103537.release-6.1.142@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.142
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.142.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.142.xz

Linux kernel version 6.1.142 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.142.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.142.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.142.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.142/v6.1.141

