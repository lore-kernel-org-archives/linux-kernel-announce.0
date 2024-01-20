Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6E5EAC2
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705749338; cv=none; b=qqa2NSi3SAhsUSvJDXDaHPE+9/fHjSowDLtHjl8ocv5EgAp2D09wE0Lgype5HW3Nvpo2ikvV3lCuu2jts/Mq22Ezmn/LRYO449LRRvGnsfCkqd9CiP8C9kpWSSSwqEUq+TSiDEieL9JHvF9jvYkX7BPV00cZUwCrKIaB5h/c8mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705749338; c=relaxed/simple;
	bh=xTE8cHGyQQFjL3h159mkpQuFojfMQSkoBgm/+zsUQQk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=a7LUeDbJYYPFAXBm3UiHOqBbe1T74JQEBF3TbLryUJkp5M3FwFOxX57wfgAIFoHo8PyRVuCNLR1zrDGb1aMSSE6L5HE78YO7Z7MU4j81LjMtnyCrYvhKhgrlwbxczI1yRJrY0B1EMo+/meSdecbFGlOuIkJnEXcm6zuojLSw4hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705749338;
	bh=xTE8cHGyQQFjL3h159mkpQuFojfMQSkoBgm/+zsUQQk=;
	h=Subject:From:To:Date:From;
	b=J0gbvEuNASV1yfuIZdWLJ+JwvpSqRzjpvegvazC+ZsHk+b05mtwqw8XyLBF//+YeG
	 og8zfgrOTbv6f/nSDw5dv8ksv6EnWdL1lApyRIhpl7iefLaAcIYmot/bITN5XXvCx4
	 dv2+Pfqpc8Od5xp6hCKjt7g5tSosJO+r44Gxl9lg=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91116C433F1
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:15:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 7A5F0D8C96C
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:15:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 20 Jan 2024 11:15:38 +0000
Message-Id: <20240120111538.release-6.6.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.13.xz

Linux kernel version 6.6.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.13/v6.6.12

