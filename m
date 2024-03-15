Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF5F524BC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710531648; cv=none; b=FUchchZNnyHwkJedDLwHhh9/QV7nc7UBL2NYOOlp8CAhqdp9aWu9prRY39wfQUzk7/rflWEOM1ciB1/09ck57yKd8n2UjowtB7X2UAoVs8TayYFI71JnDbKmduO02q5y68UUQJGh8n5L/zAE8Vpl56yyY4M2ThhteXWeVRQtfC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710531648; c=relaxed/simple;
	bh=cNsqgL0/n1MZLkizxg28zbEea3tPzk77QaMs8Os+c4o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Qvma37ScRaPLLJ3LooW30Q0ptgGlkQ8QyNHU6AH/pMhqyhRs+zdPc/U75ha5H63Vx6EVPJ6Ora4So2BEwRNugKR+smNecrI+gcRvCcKElKvkgdBka8jp48z2jlbsLJZxAlSRzPOTWdyGjzJl5eJ8DbYkZpOcUaoctKqtzAC0QS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710531648;
	bh=cNsqgL0/n1MZLkizxg28zbEea3tPzk77QaMs8Os+c4o=;
	h=Subject:From:To:Date:From;
	b=ugoZehySWbehyOfRPyEhm8+FZOM/T3sJe291z42ZxY+PTuYifJu638czHsVXU514g
	 WC9Oy9SiWOzVOeRVt8ge/t2AZSEgkMHD0EgFIPODAWv3H9kKtpMJg4/B28klG+Je2d
	 8tla6kTNZsofzgGJcbJF5U1jQpAiYxop96+ku2Vo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD902C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D0ACCD95053
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.272 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Mar 2024 19:40:47 +0000
Message-Id: <20240315194047.release-5.4.272@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.272
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.272.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.272.xz

Linux kernel version 5.4.272 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.272.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.272.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.272.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.272/v5.4.271

