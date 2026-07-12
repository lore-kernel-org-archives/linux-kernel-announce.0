Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E16181334
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Jul 2026 22:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783893638; cv=none; b=ZDpPbZcdhIPuzpz8qEJxBYfnzhYGMxz2GU5p56Q2bbyjm4C5nbqnEIjtyA60ys0DnX931TXYGhmBMdz7EDPef2/CAi+GIzXkz+ARhObKB4xdxyAne5lINJqEtnhJ4SqFCFWFa3Eh5eL0Syp8J7K0EbK7KWAJuWiLZCNUcW2GY0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783893638; c=relaxed/simple;
	bh=X48IY4nVJNt92oWqFjgqQl/aT9BNFHVJBZ8bE2rehQE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RUMlYRaIXwwxd5wSaxGQiTSadx5hTAeUT7IO3RzOuFRMDhObwqAdI+y/ISf2IHJJ6qg8Cq0ypwxO+jDILBPSwiTd38jdhnH6lXFohMSgQNbouIlEHrO9GbnJaSgp5CgVI6DHARPq7V6sgI5foH5v7+GVNq3WH6iWqdZeFDnv5N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783893638;
	bh=X48IY4nVJNt92oWqFjgqQl/aT9BNFHVJBZ8bE2rehQE=;
	h=Subject:From:To:Date:From;
	b=E6Z759MoGyRkuUcASn+A4jE7Xw9TwR87M0WXftLk0webyQYWTzVkUOPJRX6iu0Je4
	 MzayRn4+CC6ef0QpnNCg3cPajlJ7rztakfppOLLAFiGz3GM1FZllndMLxWu1k3yz89
	 y97/HcRhwEcUkiGJ3biinV02PNj7WF2s1IzvyR2Y=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1C601F00A3D
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Jul 2026 22:00:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D327D39244C4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Jul 2026 22:00:13 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 12 Jul 2026 22:00:12 +0000
Message-Id: <20260712220012.release-7.2-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.2-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.2-rc3/v7.1

Linux kernel version 7.2-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.2-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.2-rc3/v7.1

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.2-rc3/v7.2-rc2

