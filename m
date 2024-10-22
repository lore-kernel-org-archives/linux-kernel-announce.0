Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F540139CE9
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729605949; cv=none; b=Q2oTOtWjmE99lsYegQsIKaqHSep/CbVeUZFmuyEUGAOwgEgsgaia2pVOlYvrRJU/JZRazDom6drn7jyCzr3r80hAM06S7ItrJcfzhpS2A83uMPdfeCh43CYwO2P5a/ol/tunoQCJ0ecZPQOuDYVP6RheklYx8M+T5weMiI6NM9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729605949; c=relaxed/simple;
	bh=wcV9tVzveNogBMypWu5PnskBsOl1LdeB41Xyb9x24bM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZeTuJen2M1cIrNmK+Hu6RA5nDs5bUjtl6ASPsj7zsznVyusz8qW3QniZiwf5IE75Q+9PwSjsRKAA5Db7wsKVZIVeGAxC+EmNWaceNgjoRb24yx1RWEB4+s38Nj56irAsfueI/zsIyYYTDJjjvDvmXTyzzxnu9WxZ3XSaLRqDfKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729605949;
	bh=wcV9tVzveNogBMypWu5PnskBsOl1LdeB41Xyb9x24bM=;
	h=Subject:From:To:Date:From;
	b=a7QwHjXwrWwoq3fEaAWQAvYv3VZLaFLtCmw9AepW+k4GWknHliIfA/aBaaLM6wOqq
	 7DHZGHo8/AddfgusDLiwWzS8p4XNDnVjtL3IqqkSI2dZHGx/Inwp/+R57Q5eGVRzpr
	 iNKkk3fkq+4oqtaRw4YkAsUmA4pgJO+g146UH0FA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ED67C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:05:49 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 768273822D22
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 14:05:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.58 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 22 Oct 2024 14:05:55 +0000
Message-Id: <20241022140555.release-6.6.58@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.58
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.58.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.58.xz

Linux kernel version 6.6.58 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.58.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.58.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.58.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.58/v6.6.57

