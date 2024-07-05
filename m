Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8020AECF
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 08:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720166448; cv=none; b=P5aonuQs/KuqwI3lNvnfFDrw33Ssk3R5yGm2vdVIKN9WY9ExgjLbubqMtp5vhZDTH1N14kv/5Yze9nwNK3Htx5EX/trXeN1WNx0x4+hqGdg6U6lnIGdPKV1sGr2SwtsEN9g3f/koiLNriI0Ut05+IoQU/4hHUtPBF8aaZXPb59c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720166448; c=relaxed/simple;
	bh=cDdbKrrrx7xnOHJzNGa41EHpKm9guhS8fIDLxoT+K/I=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LWsxBESUacpMBVTz3ieS8yK4sbTXTgR9JFoV4lO+gwdNyqHlKNpxf9fbLpKaaJz+G3L3HJafsc2b8ULCFOJlcUYRFG+OJ8x8c8gL4RJt4Cao90SRnNYRX5YcpDUUXk5TqMhxC6D0mXhMnQkB2jlAC/ZRvhrdzN+PtZhaR2wHNF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720166448;
	bh=cDdbKrrrx7xnOHJzNGa41EHpKm9guhS8fIDLxoT+K/I=;
	h=Subject:From:To:Date:From;
	b=qBp25PcnkbIuXlSPjDoYrfOcvfssWx6Dy66dbVmbAhc8mBtOf+YFZyXiQBjh0Y8OZ
	 9sj3Z2YghCmaWh9XXuGovuxh7szTseJdTuR9avbkdWimEQzjJLBsSK4AvB3sikmRE7
	 n4qXLmHf8R5bqOW834QSi662Q5ll9kCe0ztZLSug=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3DF59C4AF0A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 08:00:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 296DDC433A2
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 08:00:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jul 2024 08:00:48 +0000
Message-Id: <20240705080048.release-6.9.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.8.xz

Linux kernel version 6.9.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.8/v6.9.7

