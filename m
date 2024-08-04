Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB80AD59
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Aug 2024 21:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722805722; cv=none; b=L9C6dc19UIHJPrFsmtZCyHBBfnuG0ZAqnHN2nJg21th2DvnozoyvGfqOnj4lFxuRnsMKIVEYmlCungdh58/wPhhpW8Qm0EjFFAM5oeh0EXKcnx/QvEKbzWUBlo5ktn/bA6iBPjPhp3GicJiVTFwFANCHhOma8q0rcIZfFr1Ja9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722805722; c=relaxed/simple;
	bh=dD4JoYF9GFogPotGeG6K75Morz1UzmwNUziV02+wGQE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mkpz6HPpim5tUSu8VWb4W9XSWngoVa4afjwVmCI4iW819z9gXjkkw8emzeN+Ieaj3VBSVmIJvpYZpUGOyOxBPFeVFDITWwxBwxjzFuFFjz/4KkIhY5TKjd2YetcFoxAw9TroRgs9VPCIk/gZKUDGh5l3aNwYH1wreJHqh3Etd2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722805722;
	bh=dD4JoYF9GFogPotGeG6K75Morz1UzmwNUziV02+wGQE=;
	h=Subject:From:To:Date:From;
	b=liY4e5bfPK1EvzCXx48383fx6nmV+DdVdTcHO1YH3FtzU2M9BxQ8NkkRs4V7g8LbJ
	 fTtw9Zbdp74+xYN2gKPo4jbdwLWXiCVKcDVcc3G7hVTmsoP/EBHfZzq9Ql2MvLbSEq
	 saibJEttIdDEnFDwoMte+x9mOdy7jSyUWXnZKqVY=
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC0BC32786
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Aug 2024 21:08:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 93BB8C6E39D
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Aug 2024 21:08:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 04 Aug 2024 21:08:41 +0000
Message-Id: <20240804210841.release-6.11-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.11-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.11-rc2/v6.10

Linux kernel version 6.11-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.11-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.11-rc2/v6.10

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.11-rc2/v6.11-rc1

