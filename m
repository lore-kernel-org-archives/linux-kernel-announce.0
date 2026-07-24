Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF524399CA
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784901671; cv=none; b=gKM9yp768uOfPb1GB/QJVeWEDFb9LQ6JYZpvQ7epu9W4Val3jWp8ur7bUhD6hujiLCcsRqIxkIkqhGQLpcWp6EFDLfIhVQ5QfWdhtb6Gk//EKeJZEfMp5imyjWLEctVvQLcoc/Pf7tly6/BQwPrc3FvB9NzzThE+S4rudAU8Vco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784901671; c=relaxed/simple;
	bh=C7PTci0kzbzEU0ZYrPSmFhlS/X0coOWsg6/KHp/WrYo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JotBNXryxt2AK23nlsVw9NyoOHk7Mrqy7DewYubw58JKGURwRvTroZoI0csnaA9Eeo5C+XCEhSTFeehqNSAmlisyMo0EQFacSkYYsGM+kV39gnCzIbl1JxJ68KhHt3FJtxqeTGr46nreP9Ger+z5y5n4mSS6b791XikRrr/e6vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784901671;
	bh=C7PTci0kzbzEU0ZYrPSmFhlS/X0coOWsg6/KHp/WrYo=;
	h=Subject:From:To:Date:From;
	b=gT6oYI8W8L9k8Oz1Q1Kjq/z+mZD+oYA0+YFjqZuLXELFDA/6+Nrde8suYunV9kFwq
	 dIkLD5tdN5DPZL5afUPy/FKexpxKzID2IVQWE880vnzHRAuQ+odBZrm1KSepBhHFI7
	 DH3tQYVJbt2r8E4LCyaNcGt1AwFv8BgapFDM1zmo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEC401F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:01:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5952B3926274
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:00:35 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.261 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 24 Jul 2026 14:00:33 +0000
Message-Id: <20260724140033.release-5.10.261@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.261
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.261.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.261.xz

Linux kernel version 5.10.261 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.261.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.261.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.261.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.261/v5.10.260

