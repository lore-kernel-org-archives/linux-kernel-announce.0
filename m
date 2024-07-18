Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E4A1E515
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721301351; cv=none; b=NaX+yy8sny9tUYQ3oRzpRH8DAR7qjNNzfbvKKznDRPYTZqgP3v++Dvb1YCNgsNJEljzMDKQfYhgjrmd7PXAon6Lcr/3LtHqkjXNxkvYUbUhnBadEEptgnGE9Z5xlgLsdpUmej3yZSAMFRl8EgECB0fEAT0nISCUNtXD28WCZpKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721301351; c=relaxed/simple;
	bh=d6gnGT6oZ1XZozGhvKWa1LuttOwfZY8VSHFe47gYYao=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jHpgb0mBtNE2+RSWz3sjiCxkubzhiVsznWPmzFDMkRxdt4pWQ5J8oXUm7xq5hQj+OrOGTIXlSj/WQuZlAmgl8Mm1T9lwpCaOngCf1KoDUPLaK0B38lRtwM8un97oKrbQTn5J0IqAAaEUeN8xFZXnvzfHOKrm0oAy4pqstAptTqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721301351;
	bh=d6gnGT6oZ1XZozGhvKWa1LuttOwfZY8VSHFe47gYYao=;
	h=Subject:From:To:Date:From;
	b=sK5wkHaULXOhFZzgoPALqCsB1r9w1XgmG7IFZzuD+vyCyWxLunldavoqPtUFyYCce
	 bu5/EcY8oZ9w4Ve4ggA5v0oE5tv2sI5ngAehYUq21/TenMait217nouvP3SBXhOWhc
	 c/DjXoU+Or49cQRJGLmfhSqzK0XpyXLT+zjTPBcU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 511B9C4AF09
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:15:51 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 41C13C433E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:15:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.222 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Jul 2024 11:15:51 +0000
Message-Id: <20240718111551.release-5.10.222@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.222
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.222.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.222.xz

Linux kernel version 5.10.222 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.222.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.222.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.222.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.222/v5.10.221

