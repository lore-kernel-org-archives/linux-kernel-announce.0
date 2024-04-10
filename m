Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400A215EFA0
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712760047; cv=none; b=iYF1E5Wn+diFNdyhheijnWSuj/xjoYQ/hHwVQwfh5aEhErJ4FpdOnQiPjUa5HrCesCRv0omZ05v4qaPYKj8St1QmULtvh4g/xNsA3lyc5fUlNT8a7yCepvkAa4Gpg0ouuKcZNcGdC5/qdJa9G80LKsZ4f3JJLJcvnL/RnFy194Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712760047; c=relaxed/simple;
	bh=GJ7FVEWGHmasFlXhcCaaTE3fonlqqC0RvAfcFS0XaiM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Wq0qeagMiLrYbAIxEJjkx0L+ad4ru6xRuD5oMgtFAsMZ2sbmjMsX0DUUNBX4Dsrnrh1P2rQ8oJyVy6n/lRsPJZGFf4HcZLcM8plNCLBrc7IwRVTYRkzltsK7MpWVscKbWfyNLBIz+gA8cB7P+AmbF106PWMRYsKAvwD4r/IY6fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712760047;
	bh=GJ7FVEWGHmasFlXhcCaaTE3fonlqqC0RvAfcFS0XaiM=;
	h=Subject:From:To:Date:From;
	b=D2HiTg1XrdXvQhV8Z1IIly/BMSUmcMYVJS3xIisZOGc+McRO94LsBAcWuJ8Mn82lR
	 ijNgILVl18zLisCst9wnyuZ7W+xLisDKbOhJHmZ62z890ngDQ4uBNLWq4HfvKOi9f4
	 bBBF+XrWpbGyv3tUhpy/49LEoerSizPUArPmxXDM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7925C433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:40:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C736BD60310
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:40:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.154 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 10 Apr 2024 14:40:46 +0000
Message-Id: <20240410144046.release-5.15.154@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.154
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.154.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.154.xz

Linux kernel version 5.15.154 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.154.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.154.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.154.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.154/v5.15.153

